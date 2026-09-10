.class public Lcom/vkontakte/android/fragments/ChatFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ChatFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/ChatFragment$Image;,
        Lcom/vkontakte/android/fragments/ChatFragment$ListItem;,
        Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;,
        Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static final FORWARD_RESULT:I = 0xc8

.field public static activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;


# instance fields
.field private actionMode:Lcom/actionbarsherlock/view/ActionMode;

.field private actionModeCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

.field private adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

.field private chatUserClickListener:Landroid/view/View$OnClickListener;

.field private chatUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private contentView:Landroid/widget/LinearLayout;

.field private dataLoading:Z

.field private emojiPopup:Lcom/vkontakte/android/EmojiPopup;

.field private emptyView:Landroid/widget/TextView;

.field private errorView:Lcom/vkontakte/android/ui/ErrorView;

.field private fwdProfileClickListener:Landroid/view/View$OnClickListener;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private isActive:Z

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/ChatFragment$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private keyboardVisible:Z

.field private lastTypingRequest:J

.field private list:Landroid/widget/ListView;

.field private listWrap:Landroid/widget/FrameLayout;

.field private loadMoreView:Landroid/view/View;

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field private messagesToForward:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field private moreAvailable:Z

.field private openChatBtn:Landroid/view/View;

.field private peer:I

.field private preloadOnReady:Z

.field private preloadedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field private preloading:Z

.field private progress:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private selectedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field private stickerSize:I

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

.field private writeBar:Lcom/vkontakte/android/ui/WriteBar;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 458
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    .line 129
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    .line 376
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$2;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUserClickListener:Landroid/view/View$OnClickListener;

    .line 389
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->keyboardVisible:Z

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    .line 391
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$3;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionModeCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    .line 444
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$4;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->fwdProfileClickListener:Landroid/view/View$OnClickListener;

    .line 452
    iput v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->stickerSize:I

    .line 456
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReady:Z

    .line 460
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1545
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->showTyping(Z)V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateTyping()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->restartTypingTimer()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/ChatFragment;I)V
    .locals 0

    .prologue
    .line 1004
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->restartTypingTimer(I)V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/ChatFragment;I)V
    .locals 0

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateOnline(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 1

    .prologue
    .line 1329
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadData()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1510
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->confirmAndDelete(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1533
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->forward(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUserClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->stickerSize:I

    return v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/fragments/ChatFragment;I)Z
    .locals 1

    .prologue
    .line 1569
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->isSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1350
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->fwdProfileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/EmojiPopup;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    return-object v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    return v0
.end method

.method static synthetic access$34(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    return v0
.end method

.method static synthetic access$35(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$36(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    return-void
.end method

.method static synthetic access$37(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$39(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1597
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->prependMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$40(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1355
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->sendMessage()V

    return-void
.end method

.method static synthetic access$41(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$42(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1418
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->sendTypingIfNeeded()V

    return-void
.end method

.method static synthetic access$43(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$44(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$45(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->rebuildItems()V

    return-void
.end method

.method static synthetic access$46(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsersPhotos()V

    return-void
.end method

.method static synthetic access$47(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$48(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$49(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    return v0
.end method

.method static synthetic access$50(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$51(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$52(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$53(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1576
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->retryFailed(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1211
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1406
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->markAsRead()V

    return-void
.end method

.method private buildItems(Ljava/util/ArrayList;IZIZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .param p2, "level"    # I
    .param p3, "out"    # Z
    .param p4, "msgId"    # I
    .param p5, "rstate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message$FwdMessage;",
            ">;IZIZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/ChatFragment$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1301
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message$FwdMessage;>;"
    .local p6, "fwdUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    const/4 v8, 0x0

    .line 1303
    .local v8, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1326
    return-object v11

    .line 1303
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/Message$FwdMessage;

    .line 1304
    .local v10, "m":Lcom/vkontakte/android/Message$FwdMessage;
    new-instance v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v1, 0x0

    invoke-direct {v9, p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;)V

    .line 1305
    .local v9, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1306
    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_4

    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->hasLinks:Z

    .line 1307
    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1308
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1309
    .local v12, "sz":I
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sub-int v1, v12, v1

    iget-object v2, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-static {v1, v12, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 1310
    move/from16 v0, p2

    iput v0, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    .line 1311
    const/4 v1, 0x3

    iput v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1312
    move/from16 v0, p3

    iput-boolean v0, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    .line 1313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1314
    move/from16 v0, p4

    iput v0, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 1315
    move/from16 v0, p5

    iput-boolean v0, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 1316
    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    .line 1317
    const-string v1, "DELETED"

    iget-object v2, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    .line 1318
    :cond_1
    iget v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    iput v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdTime:I

    .line 1319
    iget v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    iput v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    .line 1320
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1321
    iget v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    :cond_2
    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0xa

    move/from16 v0, p2

    if-gt v0, v1, :cond_3

    .line 1323
    iget-object v2, v10, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, 0x1

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/ArrayList;IZIZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1324
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1306
    .end local v12    # "sz":I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private buildItems(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/ChatFragment$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    .local p2, "fwdUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    .line 1213
    .local v16, "prevDay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .local v11, "i":I
    :goto_0
    if-gez v11, :cond_0

    .line 1219
    :goto_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .local v17, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1297
    return-object v17

    .line 1214
    .end local v17    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    const v3, 0x15180

    div-int v16, v2, v3

    .line 1216
    goto :goto_1

    .line 1213
    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1220
    .restart local v17    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/Message;

    .line 1221
    .local v14, "m":Lcom/vkontakte/android/Message;
    new-instance v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;)V

    .line 1222
    .local v13, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget-object v2, v14, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    iput-object v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1223
    iget-boolean v2, v14, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_6

    iget-object v2, v14, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    const-string v3, "%act"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1224
    iget-object v2, v14, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1225
    .local v18, "sm":[Ljava/lang/String;
    const-string v2, "chat_photo_update"

    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1226
    iget v2, v14, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v15

    .line 1227
    .local v15, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v2, v15, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_c

    const v2, 0x7f0601fc

    :goto_3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v15, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1229
    .end local v15    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const-string v2, "chat_photo_remove"

    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1230
    iget v2, v14, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v15

    .line 1231
    .restart local v15    # "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v2, v15, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_d

    const v2, 0x7f06020b

    :goto_4
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v15, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1233
    .end local v15    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    iget-object v2, v14, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1239
    .end local v18    # "sm":[Ljava/lang/String;
    :cond_6
    iget-object v2, v14, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_f

    iget-object v2, v14, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    iget-object v4, v14, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    array-length v2, v2

    if-lez v2, :cond_f

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->hasLinks:Z

    .line 1240
    iget-object v2, v14, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    iput-object v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    const/high16 v3, 0x43af0000    # 350.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 1242
    .local v20, "sz":I
    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int v2, v20, v2

    iget-object v3, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 1243
    const/4 v2, 0x0

    iput v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    .line 1244
    iget-boolean v2, v14, Lcom/vkontakte/android/Message;->out:Z

    iput-boolean v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    .line 1246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1247
    iget v2, v14, Lcom/vkontakte/android/Message;->id:I

    iput v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 1248
    iget-boolean v2, v14, Lcom/vkontakte/android/Message;->readState:Z

    iput-boolean v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 1249
    iget v2, v14, Lcom/vkontakte/android/Message;->time:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    const v3, 0x15180

    div-int/2addr v2, v3

    move/from16 v0, v16

    if-eq v2, v0, :cond_7

    .line 1250
    iget v2, v14, Lcom/vkontakte/android/Message;->time:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    const v3, 0x15180

    div-int v16, v2, v3

    .line 1251
    new-instance v19, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;)V

    .line 1252
    .local v19, "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    const/4 v2, 0x5

    move-object/from16 v0, v19

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1253
    iget v2, v14, Lcom/vkontakte/android/Message;->time:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    const v3, 0x15180

    div-int/2addr v2, v3

    const v3, 0x15180

    mul-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    .line 1254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1256
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    .end local v19    # "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_7
    iget-object v2, v14, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    iget-object v2, v14, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    :cond_9
    iget-object v2, v14, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    iget-object v2, v14, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 1260
    const/4 v2, 0x2

    iput v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1261
    iget-object v3, v14, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    const/4 v4, 0x1

    iget-boolean v5, v14, Lcom/vkontakte/android/Message;->out:Z

    iget v6, v14, Lcom/vkontakte/android/Message;->id:I

    iget-boolean v7, v14, Lcom/vkontakte/android/Message;->readState:Z

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/ArrayList;IZIZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1262
    .local v10, "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v2, v14, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v14, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_11

    .line 1263
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 1264
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x1

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1272
    :cond_a
    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1273
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    check-cast v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1275
    .restart local v13    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v3, 0x77359400

    if-le v2, v3, :cond_b

    iget-boolean v2, v14, Lcom/vkontakte/android/Message;->out:Z

    if-nez v2, :cond_b

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v3, v14, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1277
    new-instance v12, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$Image;)V

    .line 1278
    .local v12, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    const v2, 0x7f0800ce

    iput v2, v12, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v3, v14, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v2, v12, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1280
    iget-object v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    .end local v10    # "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .end local v12    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_b
    :goto_8
    iget v2, v14, Lcom/vkontakte/android/Message;->time:I

    iput v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    .line 1295
    iget-boolean v2, v14, Lcom/vkontakte/android/Message;->sendFailed:Z

    iput-boolean v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    goto/16 :goto_2

    .line 1227
    .end local v20    # "sz":I
    .restart local v15    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v18    # "sm":[Ljava/lang/String;
    :cond_c
    const v2, 0x7f0601fb

    goto/16 :goto_3

    .line 1231
    :cond_d
    const v2, 0x7f06020a

    goto/16 :goto_4

    .line 1233
    .end local v15    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Attachment;

    .line 1234
    .local v9, "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v3, :cond_5

    .line 1235
    check-cast v9, Lcom/vkontakte/android/PhotoAttachment;

    .end local v9    # "a":Lcom/vkontakte/android/Attachment;
    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/vkontakte/android/PhotoAttachment;->paddingAfter:Z

    goto/16 :goto_5

    .line 1239
    .end local v18    # "sm":[Ljava/lang/String;
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1265
    .restart local v10    # "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .restart local v20    # "sz":I
    :cond_10
    iget-object v2, v14, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v14, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 1266
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x2

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1267
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x4

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    goto/16 :goto_7

    .line 1270
    :cond_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x4

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    goto/16 :goto_7

    .line 1284
    .end local v10    # "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_12
    iget-boolean v2, v14, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x5

    :goto_9
    iput v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1285
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v3, 0x77359400

    if-le v2, v3, :cond_b

    iget-boolean v2, v14, Lcom/vkontakte/android/Message;->out:Z

    if-nez v2, :cond_b

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v3, v14, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v3, v14, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1287
    new-instance v12, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$Image;)V

    .line 1288
    .restart local v12    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    const v2, 0x7f0800ce

    iput v2, v12, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v3, v14, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v2, v12, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1290
    iget-object v2, v13, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 1284
    .end local v12    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_13
    const/4 v2, 0x1

    goto :goto_9
.end method

.method private confirmAndDelete(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1511
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1512
    const v1, 0x7f06015d

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1513
    const v1, 0x7f06015e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0d003c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1514
    const v1, 0x7f060034

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$27;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$27;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1529
    const v1, 0x7f060035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1530
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1531
    return-void
.end method

.method private forward(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1534
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1535
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1536
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ChatFragment$28;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1541
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1542
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1543
    return-void
.end method

.method private getChatUser(I)Lcom/vkontakte/android/UserProfile;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 983
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 988
    :goto_0
    return-object v1

    .line 986
    :cond_0
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 987
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    const-string v1, "..."

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object v1, v0

    .line 988
    goto :goto_0
.end method

.method private getChatUserName(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 976
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 979
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "?"

    goto :goto_0
.end method

.method private isSelected(I)Z
    .locals 3
    .param p1, "mid"    # I

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1573
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1570
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 1571
    .local v0, "msg":Lcom/vkontakte/android/Message;
    iget v2, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 1087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    .line 1088
    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    new-instance v3, Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ChatFragment$24;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {v1, v2, v0, v3}, Lcom/vkontakte/android/data/Messages;->getHistory(IIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    .line 1171
    return-void

    .line 1088
    :cond_0
    const/16 v0, 0x3c

    goto :goto_0
.end method

.method private loadFwdUsers(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1546
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$29;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {p1, v0}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/ArrayList;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 1567
    return-void
.end method

.method private markAsRead()V
    .locals 4

    .prologue
    .line 1407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1413
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1414
    invoke-static {v0}, Lcom/vkontakte/android/data/Messages;->markAsRead(Ljava/util/ArrayList;)V

    .line 1416
    :cond_1
    return-void

    .line 1408
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 1409
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget-boolean v3, v1, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v3, :cond_0

    .line 1410
    iget v3, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private prependMessages(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    const/4 v12, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1599
    const/4 v2, -0x1

    .line 1600
    .local v2, "itemOffset":I
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1601
    .local v0, "firstVisible":I
    if-nez v0, :cond_2

    .line 1602
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-le v7, v11, :cond_0

    .line 1603
    add-int/lit8 v0, v0, 0x2

    .line 1604
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1617
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1618
    .local v3, "itemsBefore":I
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v9, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    .local v1, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v7, v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v7, v12, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v7, :cond_4

    move v6, v8

    .line 1621
    .local v6, "wasDate":Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1622
    .local v4, "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v9, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1623
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    move-result v5

    .line 1624
    .local v5, "ndates":I
    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v7, v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v7, v12, :cond_1

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v7, v7, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-eqz v7, :cond_5

    :cond_1
    move v6, v8

    .line 1625
    :goto_2
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 1626
    sub-int/2addr v0, v5

    .line 1628
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "First visible = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", added = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1630
    invoke-direct {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 1631
    return-void

    .line 1606
    .end local v1    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "itemsBefore":I
    .end local v4    # "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .end local v5    # "ndates":I
    .end local v6    # "wasDate":Z
    :cond_2
    if-ne v0, v8, :cond_3

    .line 1607
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-le v7, v10, :cond_0

    .line 1608
    add-int/lit8 v0, v0, 0x1

    .line 1609
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1611
    goto/16 :goto_0

    .line 1612
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-le v7, v8, :cond_0

    .line 1613
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    goto/16 :goto_0

    .restart local v1    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3    # "itemsBefore":I
    :cond_4
    move v6, v9

    .line 1620
    goto/16 :goto_1

    .restart local v4    # "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .restart local v5    # "ndates":I
    .restart local v6    # "wasDate":Z
    :cond_5
    move v6, v9

    .line 1624
    goto :goto_2
.end method

.method private rebuildItems()V
    .locals 3

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1208
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1209
    return-void
.end method

.method private removeRepeatingDates()I
    .locals 7

    .prologue
    .line 1330
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    const/4 v1, 0x0

    .line 1332
    .local v1, "prevDay":I
    const/4 v2, 0x0

    .line 1333
    .local v2, "prevIsDate":Z
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1345
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1346
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Remove dates: removed "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    return v4

    .line 1333
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1335
    .local v0, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v5, :cond_3

    .line 1336
    iget v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    if-eq v5, v1, :cond_1

    if-eqz v2, :cond_2

    .line 1337
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    :cond_2
    iget v1, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    .line 1340
    const/4 v2, 0x1

    .line 1341
    goto :goto_0

    .line 1342
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private restartTypingTimer()V
    .locals 4

    .prologue
    .line 992
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 993
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    .line 994
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$19;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1001
    const-wide/16 v2, 0x1b58

    .line 994
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1002
    return-void
.end method

.method private restartTypingTimer(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1005
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1006
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1007
    .local v0, "typingTimer":Ljava/util/Timer;
    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$20;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    .line 1015
    const-wide/16 v2, 0x1b58

    .line 1007
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1016
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    return-void
.end method

.method private restoreDraft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 830
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    .line 831
    .local v0, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "drafts"

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 833
    .local v4, "prefs":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "text"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 834
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "text"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 835
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "attach"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 837
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "attach"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 838
    .local v3, "is":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 839
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_3

    .line 846
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    :cond_2
    :goto_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "text"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 847
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "attach"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 840
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "is":Ljava/io/DataInputStream;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v3, v6}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/WriteBar;->addAttachment(Lcom/vkontakte/android/Attachment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 839
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 842
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private retryFailed(Lcom/vkontakte/android/Message;)V
    .locals 10
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 1577
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1578
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .local v5, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1584
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1585
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v6, p1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1587
    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 1588
    iget v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    iget-object v7, p1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iget-object v8, p1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    iget-object v9, p1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-static {v6, v7, v8, v9}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/vkontakte/android/Message;

    move-result-object v4

    .line 1589
    .local v4, "m":Lcom/vkontakte/android/Message;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    .local v1, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1594
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 1595
    return-void

    .line 1579
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v1    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "m":Lcom/vkontakte/android/Message;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1580
    .local v3, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v7, v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    iget v8, p1, Lcom/vkontakte/android/Message;->id:I

    if-ne v7, v8, :cond_0

    .line 1581
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveDraft()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 801
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    .line 802
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "drafts"

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 803
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 804
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "text"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "attach"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 827
    :goto_0
    return-void

    .line 807
    :cond_0
    const/4 v6, 0x0

    .line 808
    .local v6, "satts":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 810
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 811
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 812
    .local v4, "os":Ljava/io/DataOutputStream;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 813
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 816
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 821
    .end local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    :cond_1
    :goto_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 822
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "text"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 823
    .local v3, "ed":Landroid/content/SharedPreferences$Editor;
    if-eqz v6, :cond_2

    .line 824
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "attach"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 826
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 813
    .end local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 814
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v4}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 817
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method private sendMessage()V
    .locals 10

    .prologue
    .line 1356
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1357
    .local v6, "msg":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    .line 1358
    .local v2, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    .local v4, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    const/4 v7, -0x1

    .line 1360
    .local v7, "uploadID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1367
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 1386
    :goto_1
    return-void

    .line 1360
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1361
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v9, v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    if-eqz v9, :cond_0

    .line 1362
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1363
    check-cast v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    iget-object v8, v0, Lcom/vkontakte/android/FwdMessagesAttachment;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1369
    :cond_2
    iget v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-static {v8, v6, v2, v4}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/vkontakte/android/Message;

    move-result-object v5

    .line 1370
    .local v5, "m":Lcom/vkontakte/android/Message;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    .local v1, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v3, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1375
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 1376
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 1377
    invoke-direct {p0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 1378
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 1379
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/WriteBar;->clearAttachments()V

    .line 1380
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1381
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    new-instance v9, Lcom/vkontakte/android/fragments/ChatFragment$25;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/ChatFragment$25;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private sendTypingIfNeeded()V
    .locals 4

    .prologue
    .line 1419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->lastTypingRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->lastTypingRequest:J

    .line 1421
    new-instance v0, Lcom/vkontakte/android/api/MessagesSetActivity;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesSetActivity;-><init>(I)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/MessagesSetActivity;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1423
    :cond_0
    return-void
.end method

.method private showMessageOptions(Lcom/vkontakte/android/Message;)V
    .locals 3
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 1472
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-boolean v1, p1, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0601bc

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x7f0600f0

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f060062

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1473
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1474
    const v2, 0x7f06005e

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1475
    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$26;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$26;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1507
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1508
    return-void

    .line 1472
    .end local v0    # "items":[Ljava/lang/String;
    :cond_0
    const v1, 0x7f060145

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
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

    .line 912
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 913
    .local v3, "visible":Z
    :goto_0
    if-ne v3, p1, :cond_1

    .line 942
    :goto_1
    return-void

    .end local v3    # "visible":Z
    :cond_0
    move v3, v5

    .line 912
    goto :goto_0

    .line 914
    .restart local v3    # "visible":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 915
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 916
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 917
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 918
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, -0x3ec00000    # -12.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 919
    .local v1, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 920
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 921
    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$17;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatFragment$17;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 926
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 927
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 928
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 929
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 930
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 931
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 932
    .local v2, "tv":Landroid/widget/TextView;
    const v4, -0x796957

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 933
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 935
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "ta":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 936
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 937
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 938
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$18;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatFragment$18;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method private updateChatUsers()V
    .locals 2

    .prologue
    .line 871
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v1, 0x77359400

    sub-int/2addr v0, v1

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$16;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$16;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 900
    return-void
.end method

.method private updateChatUsersCount()V
    .locals 0

    .prologue
    .line 904
    return-void
.end method

.method private updateChatUsersPhotos()V
    .locals 8

    .prologue
    const v7, 0x7f0800ce

    .line 1174
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1203
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 1204
    return-void

    .line 1174
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1175
    .local v1, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget-boolean v3, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-nez v3, :cond_0

    .line 1176
    iget v3, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    iget v3, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 1177
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 1178
    .local v2, "msg":Lcom/vkontakte/android/Message;
    iget v5, v2, Lcom/vkontakte/android/Message;->id:I

    iget v6, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    if-ne v5, v6, :cond_3

    .line 1179
    iget-object v3, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1185
    :goto_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v5, v2, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1186
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$Image;)V

    .line 1187
    .local v0, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    iput v7, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1188
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v5, v2, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1189
    iget-object v3, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1179
    .end local v0    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 1180
    .restart local v0    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    iget v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    if-ne v5, v7, :cond_4

    .line 1181
    iget-object v3, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->notifyDataSetChanged()V

    .line 1352
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 1353
    return-void
.end method

.method private updateOnline(I)V
    .locals 2
    .param p1, "online"    # I

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    if-lez p1, :cond_1

    const v0, 0x7f060081

    :goto_0
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(I)V

    .line 852
    if-nez p1, :cond_0

    .line 853
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetLastActivity;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesGetLastActivity;-><init>(I)V

    .line 854
    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$15;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetLastActivity;->setCallback(Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 866
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 868
    :cond_0
    return-void

    .line 851
    :cond_1
    const v0, 0x7f0601d3

    goto :goto_0
.end method

.method private updateTyping()V
    .locals 12

    .prologue
    const v9, 0x7f060119

    const v11, 0x7f060107

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 945
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v7, 0x77359400

    if-ge v4, v7, :cond_2

    .line 947
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 948
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    aput-object v7, v5, v6

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 951
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v5

    :goto_1
    invoke-direct {p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->showTyping(Z)V

    .line 952
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 953
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 954
    .restart local v2    # "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 955
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUserName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {v7, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 971
    :goto_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/16 v6, -0x270f

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_3
    move v4, v6

    .line 951
    goto :goto_1

    .line 957
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 958
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06011a

    new-array v9, v5, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUserName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUserName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 961
    :cond_5
    const-string v1, ""

    .line 962
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 963
    .local v0, "i":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 969
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f06011a

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 963
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 964
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUserName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 965
    add-int/lit8 v4, v0, 0x2

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v4, v8, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 967
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 966
    :cond_8
    add-int/lit8 v4, v0, 0x1

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v4, v8, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method


# virtual methods
.method public getPeerID()I
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    return v0
.end method

.method public hideEmojiPopup()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->hide()V

    .line 798
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1389
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1390
    const/16 v2, 0x2710

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v2, p1, p2, p3}, Lcom/vkontakte/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 1391
    :cond_0
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 1392
    const-string v2, "profile"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 1393
    .local v1, "profile":Lcom/vkontakte/android/UserProfile;
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    if-ne v2, v3, :cond_2

    .line 1394
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->addFwdMessages(Ljava/util/ArrayList;)V

    .line 1404
    .end local v1    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_1
    :goto_0
    return-void

    .line 1396
    .restart local v1    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1397
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1398
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1399
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_3

    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1400
    :cond_3
    const-string v2, "fwd"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1401
    const-string v2, "ChatFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 25
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 463
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 465
    sget v19, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_a

    const/16 v19, 0x2

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->stickerSize:I

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "title"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "id"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    .line 470
    new-instance v19, Lcom/vkontakte/android/fragments/ChatFragment$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$5;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    .line 485
    new-instance v19, Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const v22, 0x7f020168

    invoke-direct/range {v19 .. v22}, Lcom/vkontakte/android/EmojiPopup;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 487
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 488
    .local v18, "wrap":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-direct/range {v20 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    new-instance v19, Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->setFragment(Lcom/actionbarsherlock/app/SherlockFragment;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f08017b

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    const v20, 0x7f020168

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v19 .. v21}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    :cond_0
    const v19, -0x191410

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 497
    const v19, 0x7f030042

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    .line 499
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/high16 v20, 0x40a00000    # 5.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/high16 v21, 0x40a00000    # 5.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/high16 v22, 0x40a00000    # 5.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/high16 v23, 0x40a00000    # 5.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 502
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 503
    .local v15, "tiv1":Landroid/widget/ImageView;
    const v19, 0x7f0201b4

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    sget-object v19, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 505
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v20, 0x41400000    # 12.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 508
    .local v16, "tiv2":Landroid/widget/ImageView;
    const v19, 0x7f0201b4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 509
    sget-object v19, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 510
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 511
    .local v9, "matrix":Landroid/graphics/Matrix;
    const/high16 v19, -0x3ec00000    # -12.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 512
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 513
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v20, 0x41a00000    # 20.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    const v19, -0x19130e

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 516
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 517
    .local v17, "ttv":Landroid/widget/TextView;
    const v19, -0x796957

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 518
    const/16 v19, 0x1

    const/high16 v20, 0x41600000    # 14.0f

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 519
    const v19, 0x33d6bf95    # 1.0E-7f

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const v22, -0xf0b09

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    const v20, 0x77359400

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060119

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v23

    const-string v24, "title"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :cond_1
    const/high16 v19, 0x40a00000    # 5.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v19

    const/16 v20, 0x0

    const/high16 v21, 0x40a00000    # 5.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 523
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    new-instance v19, Landroid/widget/ListView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    .line 528
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const v20, -0x191410

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 529
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const v20, -0x191410

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 548
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 557
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x7f060069

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextSize(F)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, -0x80000000

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x11

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 564
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 570
    new-instance v19, Landroid/widget/ProgressBar;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v21, 0x42480000    # 50.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/high16 v22, 0x42480000    # 50.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/16 v23, 0x11

    invoke-direct/range {v20 .. v23}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v18 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const v20, 0x7f03002e

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 578
    new-instance v14, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 579
    .local v14, "shadow":Landroid/view/View;
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, -0x1

    const/high16 v21, 0x40800000    # 4.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/16 v22, 0x50

    invoke-direct/range {v19 .. v22}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    const v19, 0x7f0200b7

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 581
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 584
    .end local v14    # "shadow":Landroid/view/View;
    :cond_3
    new-instance v19, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0800d4

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$7;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$8;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 628
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f08017a

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$9;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f08017b

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$10;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->setHasOptionsMenu(Z)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f080179

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$11;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$11;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f080179

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$12;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f080179

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$13;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$13;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "fwd"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "fwd"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 686
    .local v7, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/ui/WriteBar;->addFwdMessages(Ljava/util/ArrayList;)V

    .line 689
    .end local v7    # "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "post"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 690
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "post"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/NewsEntry;

    .line 691
    .local v11, "p":Lcom/vkontakte/android/NewsEntry;
    const/4 v5, 0x0

    .line 692
    .local v5, "att":Lcom/vkontakte/android/Attachment;
    iget v0, v11, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v19, v0

    if-nez v19, :cond_c

    .line 693
    new-instance v5, Lcom/vkontakte/android/PostAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    invoke-direct {v5, v11}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 697
    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/WriteBar;->addAttachment(Lcom/vkontakte/android/Attachment;)V

    .line 701
    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    .end local v11    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "photos"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "photos"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 703
    .local v13, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_d

    .line 708
    .end local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$14;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$14;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Message;

    .line 719
    .local v8, "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v6, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v10, "mm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 724
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 725
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 726
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const v20, 0x7f06005e

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 730
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    const v20, 0x77359400

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 731
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers()V

    .line 741
    .end local v6    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "m":Lcom/vkontakte/android/Message;
    .end local v10    # "mm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_9
    :goto_4
    return-void

    .line 465
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v15    # "tiv1":Landroid/widget/ImageView;
    .end local v16    # "tiv2":Landroid/widget/ImageView;
    .end local v17    # "ttv":Landroid/widget/TextView;
    .end local v18    # "wrap":Landroid/widget/FrameLayout;
    :cond_a
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 535
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v15    # "tiv1":Landroid/widget/ImageView;
    .restart local v16    # "tiv2":Landroid/widget/ImageView;
    .restart local v17    # "ttv":Landroid/widget/TextView;
    .restart local v18    # "wrap":Landroid/widget/FrameLayout;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const/high16 v20, 0x7f030000

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080021

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f06002f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080021

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0200ec

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f080020

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$6;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 694
    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v11    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_c
    iget-object v0, v11, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 695
    iget-object v0, v11, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    check-cast v5, Lcom/vkontakte/android/Attachment;

    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    goto/16 :goto_2

    .line 703
    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    .end local v11    # "p":Lcom/vkontakte/android/NewsEntry;
    .restart local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 704
    .local v12, "photo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/WriteBar;->addAttachment(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_3

    .line 733
    .end local v12    # "photo":Ljava/lang/String;
    .end local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadData()V

    .line 734
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    const v20, 0x77359400

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    if-lez v19, :cond_f

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/data/Friends;->getOnlineStatus(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateOnline(I)V

    .line 737
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    const v20, 0x77359400

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers()V

    goto/16 :goto_4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 789
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 790
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 792
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/vkontakte/android/EmojiPopup;->onKeyboardStateChanged(ZI)V

    .line 794
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 744
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 745
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_search"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 747
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string v1, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v1, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    const-string v1, "com.vkontakte.android.TYPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v1, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    const-string v1, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string v1, "com.vkontakte.android.MESSAGE_ID_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    const-string v1, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    const-string v1, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 759
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1020
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "from_search"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1021
    const v4, 0x7f060012

    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1022
    .local v2, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    invoke-interface {v2, v4}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 1023
    invoke-interface {v2, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 1065
    .end local v2    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :goto_0
    return-void

    .line 1026
    :cond_0
    const v4, 0x7f080015

    const v5, 0x7f0600ff

    invoke-interface {p1, v6, v4, v6, v5}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 1027
    .local v1, "attach":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v1, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 1028
    const v4, 0x7f0200e4

    invoke-interface {v1, v4}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 1029
    iget v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v5, 0x77359400

    if-ge v4, v5, :cond_1

    .line 1030
    const v4, 0x7f060070

    invoke-interface {p1, v6, v6, v6, v4}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1031
    .restart local v2    # "item":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v2, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 1032
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$21;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment$21;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/content/Context;)V

    .line 1038
    .local v0, "actionView":Landroid/widget/ImageView;
    const v4, 0x7f020249

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1039
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 1040
    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$22;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatFragment$22;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$23;

    invoke-direct {v5, p0, v0}, Lcom/vkontakte/android/fragments/ChatFragment$23;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/widget/ImageView;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1059
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1061
    .end local v0    # "actionView":Landroid/widget/ImageView;
    .end local v2    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_1
    const v4, 0x7f080016

    const v5, 0x7f060136

    invoke-interface {p1, v6, v4, v6, v5}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    .line 1062
    .local v3, "members":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v3, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 1063
    const v4, 0x7f0200e6

    invoke-interface {v3, v4}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 762
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 763
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_search"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1447
    const/4 v2, 0x0

    .line 1448
    .local v2, "msg":Lcom/vkontakte/android/Message;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v6, p3, v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v1, v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 1449
    .local v1, "mid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1455
    :goto_0
    if-nez v2, :cond_2

    .line 1469
    :goto_1
    return-void

    .line 1449
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 1450
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget v6, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v6, v1, :cond_0

    .line 1451
    move-object v2, v0

    .line 1452
    goto :goto_0

    .line 1456
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v3, :cond_6

    .line 1457
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1459
    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    const v6, 0x7f0601bb

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/actionbarsherlock/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1460
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->notifyDataSetChanged()V

    .line 1461
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 1462
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v3}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_1

    .line 1458
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1465
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v3}, Lcom/actionbarsherlock/view/ActionMode;->getMenu()Lcom/actionbarsherlock/view/Menu;

    move-result-object v3

    const v6, 0x7f080183

    invoke-interface {v3, v6}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v6

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_3
    invoke-interface {v6, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_3

    .line 1467
    :cond_6
    invoke-direct {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->showMessageOptions(Lcom/vkontakte/android/Message;)V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1428
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v3, :cond_0

    move v3, v4

    .line 1442
    :goto_0
    return v3

    .line 1429
    :cond_0
    const/4 v2, 0x0

    .line 1430
    .local v2, "msg":Lcom/vkontakte/android/Message;
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v6, p3, v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v1, v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 1431
    .local v1, "mid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1437
    :goto_1
    if-nez v2, :cond_3

    move v3, v4

    goto :goto_0

    .line 1431
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 1432
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget v6, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v6, v1, :cond_1

    .line 1433
    move-object v2, v0

    .line 1434
    goto :goto_1

    .line 1438
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionModeCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    invoke-virtual {v3, v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 1439
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    const v6, 0x7f0601bb

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1441
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->notifyDataSetChanged()V

    move v3, v5

    .line 1442
    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const v6, 0x77359400

    .line 1068
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080015

    if-ne v1, v2, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0x7f02007c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V

    .line 1071
    :cond_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080016

    if-ne v1, v2, :cond_1

    .line 1072
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1073
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    const-string v1, "admin"

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v2, v6

    invoke-static {v2}, Lcom/vkontakte/android/data/Messages;->getChatAdmin(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1075
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1077
    const-string v1, "ChatMembersFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 1079
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 771
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    .line 773
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 774
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->saveDraft()V

    .line 775
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 776
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 779
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    .line 781
    sput-object p0, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 782
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->markAsRead()V

    .line 783
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->restoreDraft()V

    .line 784
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->loadRecents()V

    .line 785
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 786
    return-void
.end method
