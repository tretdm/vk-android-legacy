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

.field private cancelBtn:Lcom/vkontakte/android/TitleBarButton;

.field private contentView:Lcom/vkontakte/android/ui/XLinearLayout;

.field private emojiCloseTime:J

.field private emojiDlg:Landroid/app/Dialog;

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

.field private prevKbdState:Z

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

    .line 127
    sput v0, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    sput v0, Lcom/vkontakte/android/ChatActivity;->lastUserID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->CAMERA_RESULT:I

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->GALLERY_RESULT:I

    .line 100
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->VIEW_MSG_RESULT:I

    .line 101
    const/4 v0, 0x4

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->LOCATION_RESULT:I

    .line 102
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->AUDIO_RESULT:I

    .line 103
    const/4 v0, 0x6

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->VIDEO_RESULT:I

    .line 104
    const/4 v0, 0x7

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->DOCUMENT_RESULT:I

    .line 105
    const/16 v0, 0x8

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->SEL_FRIEND_REQ:I

    .line 112
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->msgQueue:Ljava/util/Vector;

    .line 122
    iput v1, p0, Lcom/vkontakte/android/ChatActivity;->nMessages:I

    .line 123
    iput-boolean v1, p0, Lcom/vkontakte/android/ChatActivity;->isForeground:Z

    .line 128
    iput-wide v2, p0, Lcom/vkontakte/android/ChatActivity;->lastTypingRequest:J

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->fwdID:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimers:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ChatActivity;->tempID:I

    .line 137
    iput-boolean v1, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    .line 141
    iput-wide v2, p0, Lcom/vkontakte/android/ChatActivity;->emojiCloseTime:J

    .line 142
    iput-boolean v1, p0, Lcom/vkontakte/android/ChatActivity;->prevKbdState:Z

    .line 146
    new-instance v0, Lcom/vkontakte/android/ChatActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ChatActivity$1;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->msgReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ChatActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ChatActivity;I)V
    .locals 0

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->restartTypingTimer(I)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ChatActivity;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->viStart:I

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ChatActivity;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->viCount:I

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1402
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->loadHistoryPage()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1213
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->showResendDialog(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/ChatActivity;)Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    return v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startSelectMode()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->stopSelectMode()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->sendMessage()V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 2148
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->sendTypingIfNeeded()V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/MultiAttachView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->closeKeyboard()V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1104
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->showAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/ChatActivity;IZ)V
    .locals 0

    .prologue
    .line 1088
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ChatActivity;->showLastSeen(IZ)V

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity;->fwdID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 1508
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->loadUsers(Ljava/util/Vector;)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity;->fwdSender:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->showEmojiPicker()V

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/ChatActivity;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$35(Lcom/vkontakte/android/ChatActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$36(Lcom/vkontakte/android/ChatActivity;J)V
    .locals 0

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/vkontakte/android/ChatActivity;->emojiCloseTime:J

    return-void
.end method

.method static synthetic access$37(Lcom/vkontakte/android/ChatActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$38(Lcom/vkontakte/android/ChatActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$39(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1137
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->showAddPhotoDialog()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->animateMessageAddition()V

    return-void
.end method

.method static synthetic access$40(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1208
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startLocationPicker()V

    return-void
.end method

.method static synthetic access$41(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1159
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startAudioSelector()V

    return-void
.end method

.method static synthetic access$42(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1166
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startVideoSelector()V

    return-void
.end method

.method static synthetic access$43(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->startDocumentSelector()V

    return-void
.end method

.method static synthetic access$44(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1228
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->resendMessage(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$45(Lcom/vkontakte/android/ChatActivity;)I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->nMessages:I

    return v0
.end method

.method static synthetic access$46(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lcom/vkontakte/android/ChatActivity;I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/vkontakte/android/ChatActivity;->nMessages:I

    return-void
.end method

.method static synthetic access$48(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$49(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/StateShadowButton2;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ChatActivity;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->isForeground:Z

    return v0
.end method

.method static synthetic access$50(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$51(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/XLinearLayout;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    return-object v0
.end method

.method static synthetic access$52(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1712
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$53(Lcom/vkontakte/android/ChatActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 1599
    invoke-direct/range {p0 .. p5}, Lcom/vkontakte/android/ChatActivity;->uploadNextPhoto([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V

    return-void
.end method

.method static synthetic access$54(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->msgQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$55(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1556
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->sendMessage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$56(Lcom/vkontakte/android/ChatActivity;J)V
    .locals 0

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/vkontakte/android/ChatActivity;->lastTypingRequest:J

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1834
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->markAllAsRead()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ChatActivity;Z)V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->showTyping(Z)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->updateTyping()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->restartTypingTimer()V

    return-void
.end method

.method private animateMessageAddition()V
    .locals 14

    .prologue
    .line 1256
    const/4 v8, 0x1

    .line 1257
    .local v8, "offset":I
    :try_start_0
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 1258
    .local v5, "lastPos":I
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    .line 1259
    .local v6, "lvis":I
    add-int/lit8 v9, v5, -0x1

    if-gt v6, v9, :cond_1

    .line 1289
    .end local v5    # "lastPos":I
    .end local v6    # "lvis":I
    :cond_0
    :goto_0
    return-void

    .line 1260
    .restart local v5    # "lastPos":I
    .restart local v6    # "lvis":I
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_2

    .line 1261
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v10, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1262
    .local v2, "c":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1263
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1264
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1265
    .local v7, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v9, 0xfa

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1266
    const-wide/16 v9, 0xfa

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1267
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 1268
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1269
    .local v3, "h":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v8

    if-ge v4, v9, :cond_0

    .line 1270
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v9, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "translationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    int-to-float v13, v3

    aput v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1271
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v9, 0xfa

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1272
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1269
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1275
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "c":Landroid/view/View;
    .end local v3    # "h":I
    .end local v4    # "i":I
    .end local v7    # "oa":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v10, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1276
    .restart local v2    # "c":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1277
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1278
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v9, 0xfa

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1279
    const-wide/16 v9, 0xfa

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 1280
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1281
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1282
    .restart local v3    # "h":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v8

    if-ge v4, v9, :cond_0

    .line 1283
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v3

    const/4 v12, 0x0

    invoke-direct {v1, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1284
    .local v1, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v9, 0xfa

    invoke-virtual {v1, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1285
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v9, v4}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1288
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "c":Landroid/view/View;
    .end local v3    # "h":I
    .end local v4    # "i":I
    .end local v5    # "lastPos":I
    .end local v6    # "lvis":I
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 1264
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private changeConfig(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    const v8, 0x7f060188

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v4, -0x3

    const/4 v5, 0x3

    .line 1926
    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v3, :cond_2

    .line 1927
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    move v1, v2

    .line 1928
    .local v1, "thin":Z
    :goto_0
    const v3, 0x7f06018c

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1929
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_4

    move v3, v4

    :goto_1
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1930
    if-eqz v1, :cond_5

    move v3, v5

    :goto_2
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1931
    const v3, 0x7f06018c

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1933
    const v3, 0x7f06018b

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1934
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_6

    move v3, v4

    :goto_3
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1935
    if-eqz v1, :cond_0

    move v6, v2

    :cond_0
    int-to-float v3, v6

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1936
    const v3, 0x7f06018b

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1938
    iget-object v3, p0, Lcom/vkontakte/android/ChatActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1939
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_7

    :goto_4
    int-to-float v3, v4

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1940
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    :cond_1
    int-to-float v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1941
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1943
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1944
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_8

    const/16 v2, 0x14

    :goto_5
    int-to-float v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1945
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/RoundedImageView;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/RoundedImageView;->setCornerRadius(I)V

    .line 1947
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "thin":Z
    :cond_2
    return-void

    .line 1927
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "thin":Z
    :cond_4
    move v3, v5

    .line 1929
    goto/16 :goto_1

    :cond_5
    move v3, v6

    .line 1930
    goto/16 :goto_2

    :cond_6
    move v3, v5

    .line 1934
    goto :goto_3

    :cond_7
    move v4, v5

    .line 1939
    goto :goto_4

    .line 1944
    :cond_8
    const/16 v2, 0x1e

    goto :goto_5
.end method

.method private closeKeyboard()V
    .locals 3

    .prologue
    .line 1179
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1180
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1181
    return-void
.end method

.method private deselectAll()V
    .locals 3

    .prologue
    .line 1950
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1954
    return-void

    .line 1951
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1952
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/vkontakte/android/MessageView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/vkontakte/android/MessageView;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/MessageView;->deselect()V

    .line 1950
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
    .line 1713
    invoke-static/range {p1 .. p1}, Lcom/vkontakte/android/Global;->replaceEmoji2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1714
    sget-object v2, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->msgQueue:Ljava/util/Vector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1808
    :goto_0
    return-void

    .line 1718
    :cond_0
    new-instance v11, Lcom/vkontakte/android/Message;

    invoke-direct {v11}, Lcom/vkontakte/android/Message;-><init>()V

    .line 1719
    .local v11, "m":Lcom/vkontakte/android/Message;
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/vkontakte/android/Message;->out:Z

    .line 1720
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    iput v2, v11, Lcom/vkontakte/android/Message;->sender:I

    .line 1721
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 1722
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ChatActivity;->tempID:I

    add-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/ChatActivity;->tempID:I

    iput v2, v11, Lcom/vkontakte/android/Message;->id:I

    .line 1723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v11, Lcom/vkontakte/android/Message;->time:I

    .line 1724
    if-eqz p2, :cond_1

    .line 1726
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

    .line 1727
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v2, v0

    if-lt v10, v2, :cond_7

    .line 1761
    .end local v10    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1762
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x5

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 1763
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vkontakte/android/Attachment;

    iput-object v2, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 1764
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

    .line 1766
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

    .line 1767
    :cond_4
    new-instance v13, Lcom/vkontakte/android/Message;

    invoke-direct {v13}, Lcom/vkontakte/android/Message;-><init>()V

    .line 1768
    .local v13, "sm":Lcom/vkontakte/android/Message;
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 1769
    iget v2, v11, Lcom/vkontakte/android/Message;->time:I

    iput v2, v13, Lcom/vkontakte/android/Message;->time:I

    .line 1770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1772
    .end local v13    # "sm":Lcom/vkontakte/android/Message;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1773
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 1774
    .local v14, "vm":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v14, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1775
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v14, v3}, Lcom/vkontakte/android/cache/ChatCache;->add(Landroid/content/Context;ILjava/util/List;Z)V

    .line 1776
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->updateListAndScroll()V

    .line 1777
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->animateMessageAddition()V

    .line 1778
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

    .line 1779
    new-instance v3, Lcom/vkontakte/android/ChatActivity$33;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/vkontakte/android/ChatActivity$33;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/MessagesSend;->setCallback(Lcom/vkontakte/android/api/MessagesSend$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 1807
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 1726
    .end local v14    # "vm":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1728
    .restart local v10    # "i":I
    :cond_7
    const-string v2, "vk"

    aget-object v3, p2, v10

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    aget-object v2, p2, v10

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1730
    aget-object v2, p2, v10

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1731
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

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
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

    .line 1733
    iget-object v3, v11, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    if-eqz p3, :cond_9

    aget-object v2, p3, v10

    if-nez v2, :cond_d

    :cond_9
    const/4 v2, 0x1

    aget-object v2, v12, v2

    :goto_5
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1734
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1758
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

    .line 1727
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1732
    .restart local v9    # "ap":[Ljava/lang/String;
    .restart local v12    # "pp":[Ljava/lang/String;
    :cond_b
    aget-object v3, p3, v10

    goto :goto_3

    :cond_c
    const/4 v4, 0x1

    aget-object v4, v12, v4

    goto :goto_4

    .line 1733
    :cond_d
    aget-object v2, p3, v10

    goto :goto_5

    .line 1735
    .end local v9    # "ap":[Ljava/lang/String;
    .end local v12    # "pp":[Ljava/lang/String;
    :cond_e
    aget-object v2, p2, v10

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1736
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x2

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1737
    iget-object v2, v11, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    aget-object v3, p2, v10

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1738
    aget-object v2, p2, v10

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1739
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

    .line 1740
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

    .line 1741
    .end local v9    # "ap":[Ljava/lang/String;
    .end local v12    # "pp":[Ljava/lang/String;
    :cond_f
    aget-object v2, p2, v10

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1743
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1744
    aget-object v2, p2, v10

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1745
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

    .line 1746
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

    .line 1747
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v2, v2, v10

    check-cast v2, Lcom/vkontakte/android/AudioAttachment;

    const/4 v3, 0x4

    aget-object v3, v12, v3

    iput-object v3, v2, Lcom/vkontakte/android/AudioAttachment;->url:Ljava/lang/String;

    goto/16 :goto_6

    .line 1748
    .end local v9    # "ap":[Ljava/lang/String;
    .end local v12    # "pp":[Ljava/lang/String;
    :cond_10
    aget-object v2, p2, v10

    const-string v3, "doc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1749
    iget-object v2, v11, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 1750
    iget-object v3, v11, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    aget-object v2, p2, v10

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1751
    iget-object v2, v11, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    aget-object v3, p2, v10

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1752
    aget-object v2, p2, v10

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1753
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

    .line 1754
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

    .line 1750
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

    .line 1755
    :cond_12
    aget-object v2, p2, v10

    const-string v3, "fwd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1756
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

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 1912
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1913
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 1914
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadHistory()V
    .locals 4

    .prologue
    .line 1409
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetHistory;

    iget v1, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    iget v2, p0, Lcom/vkontakte/android/ChatActivity;->nMessages:I

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/MessagesGetHistory;-><init>(III)V

    .line 1410
    new-instance v1, Lcom/vkontakte/android/ChatActivity$29;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChatActivity$29;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetHistory;->setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1505
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1506
    return-void
.end method

.method private loadHistoryPage()V
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1404
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/StateShadowButton2;->setVisibility(I)V

    .line 1405
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->loadHistory()V

    .line 1406
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
    .line 1509
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

    .line 1510
    new-instance v0, Lcom/vkontakte/android/ChatActivity$30;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ChatActivity$30;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/UsersGet;->setCallback(Lcom/vkontakte/android/api/UsersGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1532
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1533
    return-void

    .line 1509
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0
.end method

.method private markAllAsRead()V
    .locals 4

    .prologue
    .line 1835
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1836
    .local v1, "mids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1840
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1841
    new-instance v2, Lcom/vkontakte/android/api/MessagesMarkAsRead;

    invoke-direct {v2, v1}, Lcom/vkontakte/android/api/MessagesMarkAsRead;-><init>(Ljava/util/Vector;)V

    .line 1842
    new-instance v3, Lcom/vkontakte/android/ChatActivity$37;

    invoke-direct {v3, p0, v1}, Lcom/vkontakte/android/ChatActivity$37;-><init>(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/MessagesMarkAsRead;->setCallback(Lcom/vkontakte/android/api/MessagesMarkAsRead$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 1886
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1888
    :cond_1
    return-void

    .line 1836
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 1837
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v3, :cond_0

    .line 1838
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
    .line 1828
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v1, Lcom/vkontakte/android/ChatActivity$36;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ChatActivity$36;-><init>(Lcom/vkontakte/android/ChatActivity;Z)V

    .line 1831
    const-wide/16 v2, 0x64

    .line 1828
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1832
    return-void
.end method

.method private resendMessage(Lcom/vkontakte/android/Message;)V
    .locals 7
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    const/4 v6, 0x0

    .line 1229
    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1230
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 1231
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 1232
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v5, v5

    new-array v1, v5, [Ljava/lang/String;

    .line 1233
    .local v1, "atts":[Ljava/lang/String;
    iget-object v5, p1, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1234
    .local v4, "thumbs":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 1248
    iget-object v5, p1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-direct {p0, v5, v1, v4}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1252
    .end local v1    # "atts":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "thumbs":[Ljava/lang/String;
    :goto_1
    return-void

    .line 1235
    .restart local v1    # "atts":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "thumbs":[Ljava/lang/String;
    :cond_0
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    instance-of v5, v5, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_2

    .line 1236
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

    .line 1237
    iget-object v5, p1, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v3

    .line 1234
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1238
    :cond_2
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    instance-of v5, v5, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_3

    .line 1239
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

    .line 1240
    :cond_3
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    instance-of v5, v5, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v5, :cond_4

    .line 1241
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v2, v5, v3

    check-cast v2, Lcom/vkontakte/android/DocumentAttachment;

    .line 1242
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

    .line 1243
    .end local v2    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_4
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v5, v5, v3

    instance-of v5, v5, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v5, :cond_1

    .line 1244
    iget-object v5, p1, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    aget-object v0, v5, v3

    check-cast v0, Lcom/vkontakte/android/AudioAttachment;

    .line 1245
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

    .line 1250
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
    .line 845
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 846
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    .line 847
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/ChatActivity$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChatActivity$20;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    .line 854
    const-wide/16 v2, 0x1b58

    .line 847
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 855
    return-void
.end method

.method private restartTypingTimer(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 858
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

    .line 859
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 860
    .local v0, "typingTimer":Ljava/util/Timer;
    new-instance v1, Lcom/vkontakte/android/ChatActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ChatActivity$21;-><init>(Lcom/vkontakte/android/ChatActivity;I)V

    .line 868
    const-wide/16 v2, 0x1b58

    .line 860
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 869
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity;->typingTimers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    return-void
.end method

.method private sendMessage()V
    .locals 4

    .prologue
    const v3, 0x7f060059

    .line 774
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 775
    .local v0, "emsg":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ChatActivity;->sendMessage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 778
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)Z
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1557
    const/4 v7, 0x0

    .line 1558
    .local v7, "numUploadable":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v0

    if-lt v6, v0, :cond_1

    .line 1561
    if-lez v7, :cond_3

    .line 1562
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 1563
    .local v1, "atts":[Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 1564
    .local v2, "thumbs":[Ljava/lang/String;
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1565
    .local v4, "pdlg":Landroid/app/ProgressDialog;
    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1566
    const-string v0, "..."

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1567
    const v0, 0x7f090104

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1568
    new-instance v0, Lcom/vkontakte/android/ChatActivity$31;

    invoke-direct {v0, p0, v4, p1}, Lcom/vkontakte/android/ChatActivity$31;-><init>(Lcom/vkontakte/android/ChatActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1581
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    move-object v0, p0

    move-object v3, p1

    .line 1582
    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ChatActivity;->uploadNextPhoto([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V

    move v5, v8

    .line 1596
    .end local v1    # "atts":[Ljava/lang/String;
    .end local v2    # "thumbs":[Ljava/lang/String;
    .end local v4    # "pdlg":Landroid/app/ProgressDialog;
    :cond_0
    :goto_1
    return v5

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v7, v7, 0x1

    .line 1558
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1584
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    :cond_4
    const/4 v1, 0x0

    .line 1586
    .restart local v1    # "atts":[Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v0

    if-lez v0, :cond_5

    .line 1587
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 1588
    const/4 v6, 0x0

    :goto_2
    array-length v0, v1

    if-lt v6, v0, :cond_6

    .line 1592
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->reset()V

    move v5, v8

    .line 1594
    goto :goto_1

    .line 1589
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/MultiAttachView;->getUriAt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    .line 1588
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private sendTypingIfNeeded()V
    .locals 4

    .prologue
    .line 2149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/ChatActivity;->lastTypingRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2164
    :goto_0
    return-void

    .line 2150
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/ChatActivity;->lastTypingRequest:J

    .line 2151
    new-instance v0, Lcom/vkontakte/android/api/MessagesSetActivity;

    iget v1, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesSetActivity;-><init>(I)V

    .line 2152
    new-instance v1, Lcom/vkontakte/android/ChatActivity$38;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChatActivity$38;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesSetActivity;->setCallback(Lcom/vkontakte/android/api/MessagesSetActivity$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 2163
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private showAddAttachmentDialog()V
    .locals 3

    .prologue
    .line 1108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1109
    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1110
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a001f

    :goto_0
    new-instance v2, Lcom/vkontakte/android/ChatActivity$26;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ChatActivity$26;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1135
    return-void

    .line 1110
    :cond_0
    const v0, 0x7f0a001e

    goto :goto_0
.end method

.method private showAddPhotoDialog()V
    .locals 5

    .prologue
    .line 1138
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

    .line 1140
    .local v0, "hasCam":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1141
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1142
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1143
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1144
    new-instance v3, Lcom/vkontakte/android/ChatActivity$27;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ChatActivity$27;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1153
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1157
    .end local v1    # "items":[Ljava/lang/String;
    :goto_1
    return-void

    .line 1138
    .end local v0    # "hasCam":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1155
    .restart local v0    # "hasCam":Z
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->startGallery()V

    goto :goto_1
.end method

.method private showEmojiPicker()V
    .locals 11

    .prologue
    .line 873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/vkontakte/android/ChatActivity;->emojiCloseTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x12c

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 874
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/vkontakte/android/ChatActivity;->emojiCloseTime:J

    .line 1069
    :goto_0
    return-void

    .line 877
    :cond_0
    new-instance v5, Lcom/vkontakte/android/EmojiPickerView;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/EmojiPickerView;-><init>(Landroid/content/Context;)V

    .line 878
    .local v5, "pv":Lcom/vkontakte/android/EmojiPickerView;
    new-instance v7, Lcom/vkontakte/android/ChatActivity$22;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ChatActivity$22;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/EmojiPickerView;->setSelectionListener(Lcom/vkontakte/android/EmojiPickerView$SelectionListener;)V

    .line 891
    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 892
    .local v2, "itemH":I
    const/4 v3, 0x0

    .line 894
    .local v3, "leftPadding":I
    new-instance v0, Landroid/app/Dialog;

    const v7, 0x7f07000a

    invoke-direct {v0, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 895
    .local v0, "dlg":Landroid/app/Dialog;
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 896
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 897
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v9, 0x1000000

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 898
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 899
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x20000

    const/high16 v9, 0x20000

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 900
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x8

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 901
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x35

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 902
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 903
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v7, 0x7f060180

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 904
    const/high16 v7, 0x43aa0000    # 340.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v7, v8, :cond_1

    .line 905
    const/high16 v7, 0x43aa0000    # 340.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 911
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/XLinearLayout;->getHeight()I

    move-result v7

    const/high16 v8, 0x43480000    # 200.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 912
    mul-int/lit8 v7, v2, 0x3

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v7, v8

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 916
    :goto_2
    invoke-virtual {v5, v3}, Lcom/vkontakte/android/EmojiPickerView;->setLeftPadding(I)V

    .line 917
    invoke-virtual {v5, v2}, Lcom/vkontakte/android/EmojiPickerView;->setItemSize(I)V

    .line 918
    const/16 v7, 0x3eb

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 920
    const/4 v7, 0x1

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 921
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 922
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v6

    .line 923
    .local v6, "wcb":Landroid/view/Window$Callback;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/ChatActivity$23;

    invoke-direct {v8, p0, v6, v5, v0}, Lcom/vkontakte/android/ChatActivity$23;-><init>(Lcom/vkontakte/android/ChatActivity;Landroid/view/Window$Callback;Lcom/vkontakte/android/EmojiPickerView;Landroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 1055
    new-instance v7, Lcom/vkontakte/android/ChatActivity$24;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ChatActivity$24;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1063
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1064
    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    .line 1065
    const v7, 0x7f060189

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0200c1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1067
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    const v8, 0x7f060059

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1068
    .local v1, "edit":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_0

    .line 907
    .end local v1    # "edit":Landroid/widget/EditText;
    .end local v6    # "wcb":Landroid/view/Window$Callback;
    :cond_1
    const/4 v7, -0x1

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 908
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v2, v7, 0x8

    .line 909
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v8, v2, 0x8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    add-int/2addr v8, v9

    sub-int v3, v7, v8

    goto/16 :goto_1

    .line 914
    :cond_2
    mul-int/lit8 v7, v2, 0x4

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v7, v8

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_2
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

    .line 1089
    if-nez p1, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1091
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1092
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1093
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1094
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1095
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1096
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1099
    const v2, -0x555556

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1100
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1101
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_1

    const v2, 0x7f0901a1

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
    const v2, 0x7f0901a0

    goto :goto_1
.end method

.method private showResendDialog(Lcom/vkontakte/android/Message;)V
    .locals 3
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 1214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1215
    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1216
    const v1, 0x7f0901d2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1217
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/ChatActivity$28;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/ChatActivity$28;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/Message;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1223
    const v1, 0x7f090031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1224
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1226
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

    .line 782
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 783
    .local v3, "visible":Z
    :goto_0
    if-ne v3, p1, :cond_1

    .line 812
    :goto_1
    return-void

    .end local v3    # "visible":Z
    :cond_0
    move v3, v5

    .line 782
    goto :goto_0

    .line 784
    .restart local v3    # "visible":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 785
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 786
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 787
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 788
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, -0x3ec00000    # -12.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 789
    .local v1, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 790
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 791
    new-instance v5, Lcom/vkontakte/android/ChatActivity$18;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ChatActivity$18;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 796
    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 797
    iget-object v5, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 798
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 799
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 800
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 801
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 802
    .local v2, "tv":Landroid/widget/TextView;
    const v4, -0x796957

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 803
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 805
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "ta":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 806
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 807
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 808
    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$19;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ChatActivity$19;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method private startAudioSelector()V
    .locals 3

    .prologue
    .line 1160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/AudioListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1162
    const-string v1, "oid"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1164
    return-void
.end method

.method private startDocumentSelector()V
    .locals 3

    .prologue
    .line 1173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/DocumentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1174
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1175
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1176
    return-void
.end method

.method private startLocationPicker()V
    .locals 2

    .prologue
    .line 1209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1210
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1211
    return-void
.end method

.method private startSelectMode()V
    .locals 4

    .prologue
    const v3, 0x7f06018a

    .line 754
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    .line 755
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 756
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 757
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 758
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 759
    return-void
.end method

.method private startVideoSelector()V
    .locals 3

    .prologue
    .line 1167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/VideoListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1169
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1170
    return-void
.end method

.method private stopSelectMode()V
    .locals 7

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v4, 0x0

    .line 762
    iput-boolean v4, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    .line 763
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 764
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 765
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 766
    const v2, 0x7f06018a

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 767
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    new-instance v3, Lcom/vkontakte/android/ChatActivity$17;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ChatActivity$17;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v2, v3, v5, v6}, Lcom/vkontakte/android/ui/XLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 770
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 771
    return-void

    .line 763
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
    .locals 15

    .prologue
    const v11, 0x7f090174

    const v14, 0x7f09013d

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 815
    iget v6, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    const v9, 0x77359400

    if-ge v6, v9, :cond_1

    .line 816
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 817
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    aput-object v9, v7, v8

    invoke-virtual {v6, v11, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    move v6, v7

    :goto_1
    invoke-direct {p0, v6}, Lcom/vkontakte/android/ChatActivity;->showTyping(Z)V

    .line 821
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 822
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 823
    .restart local v4    # "tv":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v11, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 839
    .local v1, "lastPos":I
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/RefreshableListView;->getLastVisiblePosition()I

    move-result v6

    add-int/lit8 v2, v6, 0x1

    .line 840
    .local v2, "lvis":I
    add-int/lit8 v6, v1, -0x1

    if-le v2, v6, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v6, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelection(I)V

    goto :goto_0

    .end local v1    # "lastPos":I
    .end local v2    # "lvis":I
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_2
    move v6, v8

    .line 820
    goto :goto_1

    .line 824
    .restart local v4    # "tv":Landroid/widget/TextView;
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v10, :cond_4

    .line 825
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090175

    new-array v11, v7, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    iget-object v13, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    iget-object v13, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 828
    :cond_4
    const-string v3, ""

    .line 829
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 830
    .local v0, "i":I
    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 836
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f090175

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {v6, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 830
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 831
    .local v5, "uid":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 832
    add-int/lit8 v6, v0, 0x2

    iget-object v10, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v6, v10, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 834
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 833
    :cond_7
    add-int/lit8 v6, v0, 0x1

    iget-object v10, p0, Lcom/vkontakte/android/ChatActivity;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v6, v10, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ", "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method private uploadNextPhoto([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V
    .locals 12
    .param p1, "atts"    # [Ljava/lang/String;
    .param p2, "thumbs"    # [Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "pdlg"    # Landroid/app/ProgressDialog;
    .param p5, "i"    # I

    .prologue
    .line 1600
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->getNext()Ljava/lang/String;

    move-result-object v3

    .line 1601
    .local v3, "file":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1602
    .local v11, "numUploadable":I
    const/4 v9, 0x0

    .local v9, "ii":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v2

    if-lt v9, v2, :cond_0

    .line 1605
    const-string v2, "A"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1606
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, p5

    .line 1607
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    .line 1608
    invoke-virtual/range {p4 .. p4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1609
    invoke-direct {p0, p3, p1, p2}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1610
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MultiAttachView;->reset()V

    .line 1710
    .end local v3    # "file":Ljava/lang/String;
    :goto_1
    return-void

    .line 1603
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

    .line 1602
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1612
    :cond_2
    add-int/lit8 v6, p5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/vkontakte/android/ChatActivity;->uploadNextPhoto([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;I)V

    goto :goto_1

    .line 1616
    :cond_3
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v10, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1617
    .local v10, "intent":Landroid/content/Intent;
    const-string v2, "file"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    const-string v2, "type"

    const/4 v4, 0x5

    invoke-virtual {v10, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1619
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/ChatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1620
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090105

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

    .line 1621
    move/from16 v7, p5

    .line 1622
    .local v7, "_i":I
    new-instance v1, Lcom/vkontakte/android/ChatActivity$32;

    move-object v2, p0

    move-object/from16 v4, p4

    move-object v5, p3

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/vkontakte/android/ChatActivity$32;-><init>(Lcom/vkontakte/android/ChatActivity;Ljava/lang/String;Landroid/app/ProgressDialog;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1709
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/XLinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vkontakte/android/ChatActivity$25;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChatActivity$25;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1077
    :cond_0
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1292
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_7

    .line 1293
    const/16 v12, 0xb

    move/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 1294
    const-string v12, "mid"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1295
    .local v7, "mid":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1317
    .end local v7    # "mid":I
    :cond_1
    :goto_0
    const/16 v12, 0xc

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 1318
    const-string v12, "fwd"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1319
    .local v6, "m":Ljava/lang/String;
    if-nez v6, :cond_6

    .line 1400
    .end local v6    # "m":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1295
    .restart local v7    # "mid":I
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Message;

    .line 1296
    .local v8, "msg":Lcom/vkontakte/android/Message;
    iget v13, v8, Lcom/vkontakte/android/Message;->id:I

    if-ne v13, v7, :cond_0

    .line 1298
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v12, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 1301
    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-eqz v12, :cond_5

    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v12, v12

    if-lez v12, :cond_5

    .line 1302
    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v12, v12

    new-array v2, v12, [Ljava/lang/String;

    .line 1303
    .local v2, "atts":[Ljava/lang/String;
    iget-object v12, v8, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v9, v12, [Ljava/lang/String;

    .line 1304
    .local v9, "thumbs":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v12, v8, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v12, v12

    if-lt v4, v12, :cond_4

    .line 1308
    iget-object v12, v8, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v9}, Lcom/vkontakte/android/ChatActivity;->doSendMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1305
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

    .line 1306
    iget-object v12, v8, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v12, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v9, v4

    .line 1304
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1310
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

    .line 1326
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

    const v15, 0x7f090068

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0901bd

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

    .line 1327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1334
    .end local v6    # "m":Ljava/lang/String;
    :cond_7
    const/16 v12, 0x8

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    .line 1335
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_8

    .line 1336
    const-string v12, "profile"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/UserProfile;

    .line 1337
    .local v10, "u":Lcom/vkontakte/android/UserProfile;
    iget v12, v10, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "peerID"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_10

    .line 1338
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ChatActivity;->fwdID:Ljava/lang/String;

    .line 1339
    .restart local v6    # "m":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1346
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

    const v15, 0x7f090068

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0901bd

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

    .line 1347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1361
    .end local v6    # "m":Ljava/lang/String;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->stopSelectMode()V

    .line 1365
    .end local v10    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_8
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 1366
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

    .line 1368
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

    .line 1369
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

    .line 1371
    :cond_b
    const/4 v12, 0x5

    move/from16 v0, p1

    if-ne v0, v12, :cond_c

    .line 1372
    const-string v12, "audio"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    .line 1373
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

    .line 1374
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1377
    .end local v1    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_c
    const/4 v12, 0x6

    move/from16 v0, p1

    if-ne v0, v12, :cond_d

    .line 1378
    const-string v12, "video"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/api/VideoFile;

    .line 1379
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

    .line 1380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1383
    .end local v11    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :cond_d
    const/4 v12, 0x7

    move/from16 v0, p1

    if-ne v0, v12, :cond_e

    .line 1384
    const-string v12, "document"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/Document;

    .line 1385
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

    .line 1386
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 1390
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

    .line 1392
    :cond_f
    const v12, 0x7f060057

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f020123

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1351
    .restart local v10    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_10
    new-instance v5, Landroid/content/Intent;

    const-class v12, Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1352
    .local v5, "intent1":Landroid/content/Intent;
    const-string v12, "peerID"

    iget v13, v10, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1353
    const-string v12, "title"

    iget-object v13, v10, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1354
    const-string v12, "photo"

    iget-object v13, v10, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
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

    .line 1356
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

    .line 1357
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

    .line 1358
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

    .line 1359
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ChatActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1397
    .end local v5    # "intent1":Landroid/content/Intent;
    .end local v10    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_11
    const v12, 0x7f060057

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f020125

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onAllAttachmentsRemoved()V
    .locals 2

    .prologue
    .line 2134
    const v0, 0x7f060057

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2135
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 2137
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1086
    :goto_0
    return-void

    .line 1085
    :cond_0
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 1918
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1919
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ChatActivity;->changeConfig(Landroid/content/res/Configuration;)V

    .line 1920
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1923
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 38
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 228
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal(Landroid/content/Context;Z)V

    .line 230
    invoke-super/range {p0 .. p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->requestWindowFeature(I)Z

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "data1"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 237
    .local v13, "cursor":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    const-string v4, "data1"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    .line 239
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/FriendsCache;->getOneUser(Landroid/content/Context;I)Lcom/vkontakte/android/UserProfile;

    move-result-object v26

    .line 240
    .local v26, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "title"

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "peerID"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "photo"

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v26    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "peerID"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    const v5, 0x77359400

    if-ge v4, v5, :cond_1

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vkontakte/android/ChatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    .line 259
    .local v30, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "username"

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "userphoto"

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v4, Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/vkontakte/android/ui/XLinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/XLinearLayout;->setOrientation(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/XLinearLayout;->setOnKeyboardStateListener(Lcom/vkontakte/android/ui/XLinearLayout$OnKeyboardStateChangeListener;)V

    .line 266
    new-instance v4, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    .line 267
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v27

    .line 268
    .local v27, "padding":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    move/from16 v0, v27

    move/from16 v1, v27

    move/from16 v2, v27

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 269
    new-instance v4, Lcom/vkontakte/android/StateShadowButton2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/vkontakte/android/StateShadowButton2;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    const v5, 0x7f090065

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/StateShadowButton2;->setText(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 272
    new-instance v4, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020217

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    new-instance v29, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 275
    .local v29, "pparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    move-object/from16 v0, v29

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/StateShadowButton2;->setVisibility(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$2;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/StateShadowButton2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    new-instance v4, Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/vkontakte/android/ui/MultiAttachView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    .line 289
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 292
    new-instance v34, Landroid/widget/ImageView;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 293
    .local v34, "tiv1":Landroid/widget/ImageView;
    const v4, 0x7f0201a8

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 295
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 297
    new-instance v35, Landroid/widget/ImageView;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 298
    .local v35, "tiv2":Landroid/widget/ImageView;
    const v4, 0x7f0201a8

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 300
    new-instance v23, Landroid/graphics/Matrix;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Matrix;-><init>()V

    .line 301
    .local v23, "matrix":Landroid/graphics/Matrix;
    const/high16 v4, -0x3ec00000    # -12.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 302
    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 303
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    const v4, -0x19130e

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    new-instance v36, Landroid/widget/TextView;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 307
    .local v36, "ttv":Landroid/widget/TextView;
    const v4, -0x796957

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 309
    const v4, 0x33d6bf95    # 1.0E-7f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, -0xf0b09

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090174

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 312
    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 313
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v5, -0x19130e

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v5, -0x19130e

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setDividerHeight(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setStackFromBottom(Z)V

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setRefreshEnabled(Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setTranscriptMode(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->headerView:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->typingView:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/vkontakte/android/ChatActivity$MessagesAdapter;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$MessagesAdapter;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$3;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$4;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 399
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 400
    .local v16, "frame":Landroid/widget/FrameLayout;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 401
    .local v20, "llparams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 402
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/XLinearLayout;->addView(Landroid/view/View;)V

    .line 406
    const v4, 0x7f030056

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/XLinearLayout;->addView(Landroid/view/View;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/XLinearLayout;->addView(Landroid/view/View;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->setOnAttachActionListener(Lcom/vkontakte/android/ui/MultiAttachView$AttachActionListener;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    const v5, 0x7f06005a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ChatActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$5;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    const v5, 0x7f060059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$6;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->writeBar:Landroid/view/View;

    const v5, 0x7f060059

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$7;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 449
    sget-object v4, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 450
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/ChatCache;->get(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v24

    .line 451
    .local v24, "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 452
    const/16 v31, 0x0

    .local v31, "prevtime":I
    const/16 v18, 0x0

    .line 453
    .local v18, "idx":I
    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_c

    .line 468
    .end local v18    # "idx":I
    .end local v31    # "prevtime":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->loadHistory()V

    .line 478
    .end local v24    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_3
    :goto_2
    const v4, 0x7f030052

    move-object/from16 v0, p0

    iput v4, v0, Lcom/vkontakte/android/ChatActivity;->customTitleResID:I

    .line 480
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 481
    .local v15, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {v15, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v4, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v15, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v4, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-virtual {v15, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v4, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v15, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v4, "com.vkontakte.android.TYPING"

    invoke-virtual {v15, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    const v5, 0x77359400

    if-le v4, v5, :cond_4

    const-string v4, "com.vkontakte.android.CHAT_TITLE_CHANGED"

    invoke-virtual {v15, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->msgReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15, v5, v6}, Lcom/vkontakte/android/ChatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 490
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v4}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$ChatPhotosAdapter;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 496
    new-instance v4, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020217

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    new-instance v28, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 499
    .local v28, "pbparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    move-object/from16 v0, v28

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_10

    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 504
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    const v5, -0x948167

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    const v5, 0x322bcc77    # 1.0E-8f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, -0xc0907

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    const v5, 0x7f09006c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v14, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 513
    .local v14, "etparams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->emptyTextView:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->setContentView(Landroid/view/View;)V

    .line 519
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    if-lez v4, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    const v5, 0x77359400

    if-ge v4, v5, :cond_11

    .line 520
    const v4, 0x7f060188

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 521
    .local v19, "iv":Landroid/widget/ImageView;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/vkontakte/android/ChatActivity$8;-><init>(Lcom/vkontakte/android/ChatActivity;Landroid/widget/ImageView;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 528
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 529
    const v4, 0x7f060187

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ChatActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$9;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    .end local v19    # "iv":Landroid/widget/ImageView;
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    const v5, 0x77359400

    if-le v4, v5, :cond_5

    .line 541
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 542
    .local v12, "btnMembers":Landroid/widget/ImageView;
    const v4, 0x7f0200e9

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v11, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 544
    .local v11, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 545
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 546
    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    new-instance v4, Lcom/vkontakte/android/ChatActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/vkontakte/android/ChatActivity$10;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    const v4, 0x7f060186

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f060186

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v12, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 561
    .end local v11    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "btnMembers":Landroid/widget/ImageView;
    :cond_5
    const v4, 0x7f060057

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f020125

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 562
    const v4, 0x7f060057

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ChatActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$11;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->contentView:Lcom/vkontakte/android/ui/XLinearLayout;

    const v5, -0xe5e5e6

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/XLinearLayout;->setBackgroundColor(I)V

    .line 574
    const/16 v25, 0x0

    .line 575
    .local v25, "online":Z
    sget-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    sput-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 577
    :cond_6
    :try_start_1
    sget-object v4, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_12

    .line 584
    :goto_5
    if-eqz v25, :cond_8

    .line 585
    const v4, 0x7f060182

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ExTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " <img src=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0200ed

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ExTextView;->setHTML(Ljava/lang/String;)V

    .line 588
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    const v5, 0x77359400

    if-ge v4, v5, :cond_9

    if-nez v25, :cond_9

    .line 589
    new-instance v4, Lcom/vkontakte/android/api/MessagesGetLastActivity;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-direct {v4, v5}, Lcom/vkontakte/android/api/MessagesGetLastActivity;-><init>(I)V

    .line 590
    new-instance v5, Lcom/vkontakte/android/ChatActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$12;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/api/MessagesGetLastActivity;->setCallback(Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 602
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 605
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fwd"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "fwd"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 610
    .local v22, "m":Ljava/lang/String;
    const/16 v17, 0x0

    .line 614
    .local v17, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fwd"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090068

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 616
    add-int/lit8 v17, v17, 0x1

    .line 620
    .end local v17    # "i":I
    .end local v22    # "m":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "attachments"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "attachments"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 622
    .local v10, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/MultiAttachView;->setVisibility(I)V

    .line 623
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_14

    .line 630
    .end local v10    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    new-instance v4, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/ChatActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 631
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/4 v5, -0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 632
    .local v21, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v21

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 633
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 636
    const v4, 0x7f06018a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/ChatActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    new-instance v5, Lcom/vkontakte/android/ChatActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$13;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    const v4, 0x7f06018b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ChatActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$14;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    const v4, 0x7f06018c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ChatActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$15;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    const v4, 0x7f060189

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/vkontakte/android/ChatActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ChatActivity$16;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vkontakte/android/ChatActivity;->changeConfig(Landroid/content/res/Configuration;)V

    .line 751
    return-void

    .line 453
    .end local v14    # "etparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v15    # "filter":Landroid/content/IntentFilter;
    .end local v21    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "online":Z
    .end local v28    # "pbparams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v18    # "idx":I
    .restart local v24    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    .restart local v31    # "prevtime":I
    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/Message;

    .line 455
    .local v22, "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v22

    iget v5, v0, Lcom/vkontakte/android/Message;->time:I

    sub-int v5, v5, v31

    const/16 v6, 0xe10

    if-le v5, v6, :cond_d

    .line 456
    new-instance v33, Lcom/vkontakte/android/Message;

    invoke-direct/range {v33 .. v33}, Lcom/vkontakte/android/Message;-><init>()V

    .line 457
    .local v33, "sm":Lcom/vkontakte/android/Message;
    const/4 v5, 0x1

    move-object/from16 v0, v33

    iput-boolean v5, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 458
    move-object/from16 v0, v22

    iget v5, v0, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, v33

    iput v5, v0, Lcom/vkontakte/android/Message;->time:I

    .line 460
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    move/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 461
    add-int/lit8 v18, v18, 0x1

    .line 463
    .end local v33    # "sm":Lcom/vkontakte/android/Message;
    :cond_d
    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v31, v0

    .line 464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    move/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 465
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 470
    .end local v18    # "idx":I
    .end local v22    # "m":Lcom/vkontakte/android/Message;
    .end local v24    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    .end local v31    # "prevtime":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->messages:Ljava/util/Vector;

    sget-object v4, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 471
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->loadMoreBtn:Lcom/vkontakte/android/StateShadowButton2;

    sget-object v4, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    const/16 v4, 0x8

    :goto_7
    invoke-virtual {v5, v4}, Lcom/vkontakte/android/StateShadowButton2;->setVisibility(I)V

    .line 472
    sget-object v4, Lcom/vkontakte/android/LongPollService;->cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->knownUserNames:Ljava/util/HashMap;

    sget-object v4, Lcom/vkontakte/android/LongPollService;->cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->knownUserPhotos:Ljava/util/HashMap;

    sget-object v4, Lcom/vkontakte/android/LongPollService;->cachedKnownUserphotos:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 471
    :cond_f
    const/4 v4, 0x0

    goto :goto_7

    .line 501
    .restart local v15    # "filter":Landroid/content/IntentFilter;
    .restart local v28    # "pbparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 538
    .restart local v14    # "etparams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_11
    const v4, 0x7f060187

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 577
    .restart local v25    # "online":Z
    :cond_12
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/vkontakte/android/UserProfile;

    .line 578
    .local v37, "up":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v37

    iget v5, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    if-ne v5, v6, :cond_7

    .line 579
    move-object/from16 v0, v37

    iget v4, v0, Lcom/vkontakte/android/UserProfile;->online:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-lez v4, :cond_13

    const/16 v25, 0x1

    .line 580
    :goto_8
    goto/16 :goto_5

    .line 579
    :cond_13
    const/16 v25, 0x0

    goto :goto_8

    .line 623
    .end local v37    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v10    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 624
    .local v32, "s":Ljava/lang/String;
    const-string v5, "A"

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    const/4 v6, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/MultiAttachView;->addAlreadyUploaded(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 625
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/vkontakte/android/ui/MultiAttachView;->add(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 583
    .end local v10    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_5

    .line 244
    .end local v14    # "etparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v15    # "filter":Landroid/content/IntentFilter;
    .end local v16    # "frame":Landroid/widget/FrameLayout;
    .end local v20    # "llparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v23    # "matrix":Landroid/graphics/Matrix;
    .end local v25    # "online":Z
    .end local v27    # "padding":I
    .end local v28    # "pbparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v29    # "pparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v30    # "prefs":Landroid/content/SharedPreferences;
    .end local v34    # "tiv1":Landroid/widget/ImageView;
    .end local v35    # "tiv2":Landroid/widget/ImageView;
    .end local v36    # "ttv":Landroid/widget/TextView;
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1536
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 1537
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->msgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1538
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/ChatActivity;->lastUserID:I

    .line 1539
    iget-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->selectMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->stopSelectMode()V

    .line 1540
    :cond_0
    return-void
.end method

.method public onKeyboardStateChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2140
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity;->attachView:Lcom/vkontakte/android/ui/MultiAttachView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/vkontakte/android/ui/MultiAttachView;->show:Z

    .line 2141
    iget-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->prevKbdState:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->emojiDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2145
    :cond_0
    iput-boolean p1, p0, Lcom/vkontakte/android/ChatActivity;->prevKbdState:Z

    .line 2146
    return-void

    .line 2140
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1543
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 1544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->isForeground:Z

    .line 1545
    const/4 v0, -0x1

    sput v0, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    .line 1546
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1549
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 1550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ChatActivity;->isForeground:Z

    .line 1551
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->markAllAsRead()V

    .line 1552
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->peerID:I

    sput v0, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    sput v0, Lcom/vkontakte/android/ChatActivity;->lastUserID:I

    .line 1553
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ChatActivity;->changeConfig(Landroid/content/res/Configuration;)V

    .line 1554
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1892
    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->viStart:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ChatActivity;->viCount:I

    if-ne v0, p3, :cond_0

    .line 1898
    :goto_0
    return-void

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1894
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    .line 1895
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/ChatActivity;Lcom/vkontakte/android/ChatActivity$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1896
    iput p3, p0, Lcom/vkontakte/android/ChatActivity;->viCount:I

    .line 1897
    iput p2, p0, Lcom/vkontakte/android/ChatActivity;->viStart:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1902
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 1904
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->deselectAll()V

    .line 1905
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->hideKeyboard()V

    .line 1907
    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->deselectAll()V

    .line 1908
    :cond_1
    return-void
.end method

.method public onShowAddAttach()V
    .locals 0

    .prologue
    .line 2128
    invoke-direct {p0}, Lcom/vkontakte/android/ChatActivity;->showAddAttachmentDialog()V

    .line 2129
    return-void
.end method

.method public startCamera()V
    .locals 5

    .prologue
    .line 1185
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1186
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    const-string v4, "tmp"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p0}, Lcom/vkontakte/android/ChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/ChatActivity;->tempPhotoURI:Landroid/net/Uri;

    .line 1192
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v0, "camIntent":Landroid/content/Intent;
    const-string v3, "output"

    iget-object v4, p0, Lcom/vkontakte/android/ChatActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1195
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    .end local v0    # "camIntent":Landroid/content/Intent;
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 1196
    :catch_0
    move-exception v2

    .line 1197
    .local v2, "x":Ljava/lang/Exception;
    const v3, 0x7f090053

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startGallery()V
    .locals 3

    .prologue
    .line 1202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 1203
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1202
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1204
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1206
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 1811
    new-instance v0, Lcom/vkontakte/android/ChatActivity$34;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ChatActivity$34;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1816
    return-void
.end method

.method public updateListAndScroll()V
    .locals 1

    .prologue
    .line 1819
    new-instance v0, Lcom/vkontakte/android/ChatActivity$35;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ChatActivity$35;-><init>(Lcom/vkontakte/android/ChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1825
    return-void
.end method
