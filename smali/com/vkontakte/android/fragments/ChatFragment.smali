.class public Lcom/vkontakte/android/fragments/ChatFragment;
.super Landroid/app/Fragment;
.source "ChatFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/vkontakte/android/fragments/BackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/ChatFragment$Image;,
        Lcom/vkontakte/android/fragments/ChatFragment$ListItem;,
        Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;,
        Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;
    }
.end annotation


# static fields
.field private static final FORWARD_RESULT:I = 0xc8

.field public static activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;


# instance fields
.field private actionMode:Landroid/view/ActionMode;

.field private actionModeCallback:Landroid/view/ActionMode$Callback;

.field private adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

.field private chatUserClickListener:Landroid/view/View$OnClickListener;

.field private chatUserLongClickListener:Landroid/view/View$OnLongClickListener;

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

.field private dataLoadingDown:Z

.field private emojiPopup:Lcom/vkontakte/android/EmojiPopup;

.field private emptyView:Landroid/widget/TextView;

.field private errorView:Lcom/vkontakte/android/ui/ErrorView;

.field private fwdProfileClickListener:Landroid/view/View$OnClickListener;

.field private hasSeparator:Z

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

.field private jumpToEndBtn:Landroid/view/View;

.field private jumpedToEnd:Z

.field private keyboardVisible:Z

.field private lastTypingRequest:J

.field private list:Landroid/widget/ListView;

.field private listWrap:Landroid/widget/FrameLayout;

.field private loadMoreView:Landroid/view/View;

.field private loadMoreViewBtm:Landroid/view/View;

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

.field private moreAvailableDown:Z

.field private offsetFromBottom:I

.field private openChatBtn:Landroid/view/View;

.field private peer:I

.field private preloadOnReady:Z

.field private preloadOnReadyDown:Z

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

.field private preloadedMessagesDown:Ljava/util/ArrayList;
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

.field private preloadingDown:Z

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

.field private userNamesAcc:Ljava/util/HashMap;
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

.field private writeBar:Lcom/vkontakte/android/ui/WriteBar;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 663
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    .line 142
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    .line 555
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$2;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUserClickListener:Landroid/view/View$OnClickListener;

    .line 568
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$3;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUserLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 590
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->keyboardVisible:Z

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    .line 592
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$4;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    .line 645
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$5;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->fwdProfileClickListener:Landroid/view/View$OnClickListener;

    .line 656
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReady:Z

    .line 657
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoadingDown:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadingDown:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReadyDown:Z

    .line 658
    iput v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    .line 659
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    .line 661
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    .line 665
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->markAsRead()V

    return-void
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->showTyping(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateTyping()V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeSeparator()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->restartTypingTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/fragments/ChatFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->restartTypingTimer(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/fragments/ChatFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateOnline(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->rebuildItems()V

    return-void
.end method

.method static synthetic access$2500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadData(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->confirmAndDelete(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->forward(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/EmojiPopup;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/StickerAttachment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/StickerAttachment;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->sendSticker(Lcom/vkontakte/android/StickerAttachment;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEnd()V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    return v0
.end method

.method static synthetic access$4100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailable:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReady:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->prependMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoadingDown:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoadingDown:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadingDown:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadingDown:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReadyDown:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReadyDown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->appendMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->sendMessage()V

    return-void
.end method

.method static synthetic access$5300(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->sendTypingIfNeeded()V

    return-void
.end method

.method static synthetic access$5500(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/vkontakte/android/fragments/ChatFragment;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->getOnlineString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsersPhotos()V

    return-void
.end method

.method static synthetic access$5800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers(Z)V

    return-void
.end method

.method static synthetic access$6002(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    return-void
.end method

.method static synthetic access$6300(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideJumpButton()V

    return-void
.end method

.method static synthetic access$6400(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->animateJump()V

    return-void
.end method

.method static synthetic access$6500(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataDown()V

    return-void
.end method

.method static synthetic access$6800(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->retryFailed(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUserClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUserLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/vkontakte/android/fragments/ChatFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->isSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->fwdProfileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    return v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/fragments/ChatFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    return p1
.end method

.method static synthetic access$808(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    return v0
.end method

.method static synthetic access$820(Lcom/vkontakte/android/fragments/ChatFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;
    .param p1, "x1"    # I

    .prologue
    .line 129
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    return v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/ChatFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    return-object v0
.end method

.method private animateJump()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1249
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 1250
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1251
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 1252
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1253
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1254
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1255
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 1256
    .local v2, "offset":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v11}, Landroid/widget/ListView;->setAlpha(F)V

    .line 1257
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 1258
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v12, v7}, Landroid/widget/ListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1259
    invoke-virtual {v1, v12, v7}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1260
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1261
    .local v3, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const-string v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const-string v6, "alpha"

    new-array v7, v10, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "translationY"

    new-array v6, v10, [F

    neg-int v7, v2

    int-to-float v7, v7

    aput v7, v6, v9

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x3

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1263
    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$21;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$21;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1270
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1271
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1272
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1274
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "offset":I
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method

.method private appendMessages(Ljava/util/List;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 2437
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2452
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 2439
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2441
    .local v0, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v0, v3, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 2442
    .local v1, "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2443
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 2444
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2445
    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 2446
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/fragments/ChatFragment$39;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ChatFragment$39;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2451
    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->markAsRead()V

    goto :goto_0
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
    .line 1974
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message$FwdMessage;>;"
    .local p6, "fwdUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1975
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    const/4 v8, 0x0

    .line 1976
    .local v8, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Message$FwdMessage;

    .line 1977
    .local v11, "m":Lcom/vkontakte/android/Message$FwdMessage;
    new-instance v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v1, 0x0

    invoke-direct {v10, p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    .line 1978
    .local v10, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget-object v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    iput-object v1, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1979
    iget-object v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_3

    iget-object v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    iget-object v3, v11, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->hasLinks:Z

    .line 1980
    iget-object v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    iput-object v1, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1981
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1982
    .local v13, "sz":I
    const/high16 v1, 0x42e60000    # 115.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sub-int v1, v13, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    mul-int v2, v2, p2

    sub-int/2addr v1, v2

    iget-object v2, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-static {v1, v13, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 1983
    move/from16 v0, p2

    iput v0, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    .line 1984
    const/4 v1, 0x3

    iput v1, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1985
    move/from16 v0, p3

    iput-boolean v0, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    .line 1986
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1987
    move/from16 v0, p4

    iput v0, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 1988
    move/from16 v0, p5

    iput-boolean v0, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 1989
    iget-object v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    iput-object v1, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    .line 1990
    const-string v1, "DELETED"

    iget-object v2, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    .line 1991
    :cond_0
    iget v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    iput v1, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdTime:I

    .line 1992
    iget v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    iput v1, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    .line 1993
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    iget v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    :cond_1
    iget-object v1, v11, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v1, 0xa

    move/from16 v0, p2

    if-gt v0, v1, :cond_2

    .line 1996
    iget-object v2, v11, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, 0x1

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/ArrayList;IZIZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1997
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 1998
    goto/16 :goto_0

    .line 1979
    .end local v13    # "sz":I
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1999
    .end local v10    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v11    # "m":Lcom/vkontakte/android/Message$FwdMessage;
    :cond_4
    return-object v12
.end method

.method private buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;
    .locals 33
    .param p3, "append"    # Z
    .param p4, "noDates"    # Z
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
            ">;ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/ChatFragment$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1806
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    .local p2, "fwdUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1807
    .local v24, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1970
    :cond_0
    return-object v24

    .line 1808
    :cond_1
    const/16 v22, 0x0

    .line 1809
    .local v22, "prevDay":I
    const/16 v23, 0x1

    .line 1810
    .local v23, "prevReadState":Z
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->readState:Z

    if-eqz v2, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v2, :cond_5

    const/16 v20, 0x1

    .line 1811
    .local v20, "needDivider":Z
    :goto_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 1812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .local v13, "i":I
    :goto_1
    if-ltz v13, :cond_2

    .line 1813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_6

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    const v3, 0x15180

    div-int v22, v2, v3

    .line 1819
    .end local v13    # "i":I
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/Message;

    .line 1821
    .local v18, "m":Lcom/vkontakte/android/Message;
    new-instance v17, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    .line 1822
    .local v17, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1823
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1824
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1825
    .local v10, "act":Ljava/lang/String;
    const/16 v31, 0x0

    .line 1826
    .local v31, "uids":[I
    const-string v2, "chat_photo_update"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1827
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v21

    .line 1828
    .local v21, "p":Lcom/vkontakte/android/UserProfile;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_7

    const v2, 0x7f0d0063

    :goto_3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1829
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .end local v31    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v31, v2

    .line 1876
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v31    # "uids":[I
    :goto_4
    if-eqz v31, :cond_3

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_3

    .line 1877
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/StyleSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    .line 1878
    .local v26, "spans":[Ljava/lang/Object;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    move-object/from16 v0, v26

    array-length v2, v0

    if-ge v13, v2, :cond_3

    .line 1880
    move-object/from16 v0, v31

    array-length v2, v0

    if-lt v13, v2, :cond_1b

    .line 1891
    .end local v13    # "i":I
    .end local v26    # "spans":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Attachment;

    .line 1892
    .local v9, "a":Lcom/vkontakte/android/Attachment;
    instance-of v2, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_4

    .line 1893
    check-cast v9, Lcom/vkontakte/android/PhotoAttachment;

    .end local v9    # "a":Lcom/vkontakte/android/Attachment;
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/vkontakte/android/PhotoAttachment;->paddingAfter:Z

    goto :goto_6

    .line 1810
    .end local v10    # "act":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v18    # "m":Lcom/vkontakte/android/Message;
    .end local v20    # "needDivider":Z
    .end local v31    # "uids":[I
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1812
    .restart local v13    # "i":I
    .restart local v20    # "needDivider":Z
    :cond_6
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .line 1828
    .end local v13    # "i":I
    .restart local v10    # "act":Ljava/lang/String;
    .restart local v17    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .restart local v18    # "m":Lcom/vkontakte/android/Message;
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v31    # "uids":[I
    :cond_7
    const v2, 0x7f0d0064

    goto/16 :goto_3

    .line 1830
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_8
    const-string v2, "chat_photo_remove"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1831
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v21

    .line 1832
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_9

    const v2, 0x7f0d0061

    :goto_7
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1833
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .end local v31    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v31, v2

    .line 1834
    .restart local v31    # "uids":[I
    goto/16 :goto_4

    .line 1832
    :cond_9
    const v2, 0x7f0d0062

    goto :goto_7

    .line 1834
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_a
    const-string v2, "chat_create"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1835
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v21

    .line 1836
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_b

    const v2, 0x7f0d028f

    :goto_8
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action_text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1837
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .end local v31    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v31, v2

    .line 1838
    .restart local v31    # "uids":[I
    goto/16 :goto_4

    .line 1836
    :cond_b
    const v2, 0x7f0d0290

    goto :goto_8

    .line 1838
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_c
    const-string v2, "chat_title_update"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1839
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v21

    .line 1840
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_d

    const v2, 0x7f0d0291

    :goto_9
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action_text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1841
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .end local v31    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v31, v2

    .line 1842
    .restart local v31    # "uids":[I
    goto/16 :goto_4

    .line 1840
    :cond_d
    const v2, 0x7f0d0292

    goto :goto_9

    .line 1842
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_e
    const-string v2, "chat_invite_user"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1843
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_mid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 1844
    .local v30, "uid":I
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v21

    .line 1845
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v0, v30

    if-ne v0, v2, :cond_10

    .line 1846
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_f

    const v2, 0x7f0d0299

    :goto_a
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1847
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .end local v31    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v31, v2

    .restart local v31    # "uids":[I
    goto/16 :goto_4

    .line 1846
    :cond_f
    const v2, 0x7f0d029a

    goto :goto_a

    .line 1850
    :cond_10
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1851
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1854
    .local v19, "name":Ljava/lang/String;
    :goto_b
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_13

    const v2, 0x7f0d0293

    :goto_c
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    const-string v8, "&lt;"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1855
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .end local v31    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v31, v2

    const/4 v2, 0x1

    aput v30, v31, v2

    .restart local v31    # "uids":[I
    goto/16 :goto_4

    .line 1853
    .end local v19    # "name":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    .restart local v19    # "name":Ljava/lang/String;
    :goto_d
    goto/16 :goto_b

    .end local v19    # "name":Ljava/lang/String;
    :cond_12
    const-string v19, "..."

    goto :goto_d

    .line 1854
    .restart local v19    # "name":Ljava/lang/String;
    :cond_13
    const v2, 0x7f0d0294

    goto/16 :goto_c

    .line 1857
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v30    # "uid":I
    :cond_14
    const-string v2, "chat_kick_user"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1858
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_mid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 1859
    .restart local v30    # "uid":I
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v21

    .line 1860
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v0, v30

    if-ne v0, v2, :cond_16

    .line 1861
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_15

    const v2, 0x7f0d0297

    :goto_e
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1862
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .end local v31    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v31, v2

    .restart local v31    # "uids":[I
    goto/16 :goto_4

    .line 1861
    :cond_15
    const v2, 0x7f0d0298

    goto :goto_e

    .line 1865
    :cond_16
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1866
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1869
    .restart local v19    # "name":Ljava/lang/String;
    :goto_f
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_19

    const v2, 0x7f0d0295

    :goto_10
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v32, "&lt;"

    move-object/from16 v0, v32

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    const-string v8, "&lt;"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1870
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v31, v0

    .end local v31    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v31, v2

    const/4 v2, 0x1

    aput v30, v31, v2

    .restart local v31    # "uids":[I
    goto/16 :goto_4

    .line 1868
    .end local v19    # "name":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v19, v2

    .restart local v19    # "name":Ljava/lang/String;
    :goto_11
    goto/16 :goto_f

    .end local v19    # "name":Ljava/lang/String;
    :cond_18
    const-string v19, "..."

    goto :goto_11

    .line 1869
    .restart local v19    # "name":Ljava/lang/String;
    :cond_19
    const v2, 0x7f0d0296

    goto/16 :goto_10

    .line 1874
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v30    # "uid":I
    :cond_1a
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1881
    .restart local v13    # "i":I
    .restart local v26    # "spans":[Ljava/lang/Object;
    :cond_1b
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    aget-object v3, v26, v13

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v28

    .line 1882
    .local v28, "start":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    aget-object v3, v26, v13

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 1883
    .local v11, "end":I
    new-instance v25, Lcom/vkontakte/android/fragments/ChatFragment$31;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vkontakte://profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v31, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$31;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/lang/String;)V

    .line 1888
    .local v25, "span":Landroid/text/style/URLSpan;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v2, v0, v1, v11, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1879
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 1897
    .end local v10    # "act":Ljava/lang/String;
    .end local v11    # "end":I
    .end local v13    # "i":I
    .end local v25    # "span":Landroid/text/style/URLSpan;
    .end local v26    # "spans":[Ljava/lang/Object;
    .end local v28    # "start":I
    .end local v31    # "uids":[I
    :cond_1c
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_23

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    array-length v2, v2

    if-lez v2, :cond_23

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->hasLinks:Z

    .line 1898
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    const/high16 v3, 0x43af0000    # 350.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1900
    .local v29, "sz":I
    const/high16 v2, 0x42e60000    # 115.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int v2, v29, v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 1901
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    .line 1902
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->out:Z

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    .line 1904
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1905
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->id:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 1906
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->readState:Z

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 1907
    if-eqz v20, :cond_1d

    if-eqz v23, :cond_1d

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    if-nez v2, :cond_1d

    .line 1908
    new-instance v27, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v2, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    .line 1909
    .local v27, "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    const/4 v2, 0x6

    move-object/from16 v0, v27

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1910
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1911
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1912
    const-string v2, ""

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1913
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1914
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    .line 1916
    .end local v27    # "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_1d
    if-nez p4, :cond_1e

    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->time:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    const v3, 0x15180

    div-int/2addr v2, v3

    move/from16 v0, v22

    if-eq v2, v0, :cond_1e

    .line 1917
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->time:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    const v3, 0x15180

    div-int v22, v2, v3

    .line 1918
    new-instance v27, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v2, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    .line 1919
    .restart local v27    # "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    const/4 v2, 0x5

    move-object/from16 v0, v27

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1920
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->time:I

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

    move-object/from16 v0, v27

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    .line 1921
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1922
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1923
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1925
    .end local v27    # "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_1e
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    move/from16 v23, v0

    .line 1926
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1f

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1f

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_20

    :cond_1f
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    :cond_20
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_26

    .line 1928
    const/4 v2, 0x2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1929
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, v18

    iget-boolean v5, v0, Lcom/vkontakte/android/Message;->out:Z

    move-object/from16 v0, v18

    iget v6, v0, Lcom/vkontakte/android/Message;->id:I

    move-object/from16 v0, v18

    iget-boolean v7, v0, Lcom/vkontakte/android/Message;->readState:Z

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/ArrayList;IZIZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1930
    .local v12, "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_25

    .line 1931
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    .line 1932
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x1

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1940
    :cond_21
    :goto_13
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1941
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    check-cast v17, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1943
    .restart local v17    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v3, 0x77359400

    if-le v2, v3, :cond_22

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v2, :cond_22

    .line 1944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1945
    new-instance v16, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    .line 1946
    .local v16, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    const v2, 0x7f0800d5

    move-object/from16 v0, v16

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1948
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1966
    .end local v12    # "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .end local v16    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_22
    :goto_14
    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    .line 1967
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->sendFailed:Z

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    goto/16 :goto_2

    .line 1897
    .end local v29    # "sz":I
    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 1933
    .restart local v12    # "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .restart local v29    # "sz":I
    :cond_24
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_21

    .line 1934
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x2

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1935
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x4

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    goto/16 :goto_13

    .line 1938
    :cond_25
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x4

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    goto/16 :goto_13

    .line 1954
    .end local v12    # "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_26
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_27

    const/4 v2, 0x5

    :goto_15
    move-object/from16 v0, v17

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1955
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v3, 0x77359400

    if-le v2, v3, :cond_22

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v2, :cond_22

    .line 1956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1957
    new-instance v16, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    .line 1958
    .restart local v16    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    const v2, 0x7f0800d5

    move-object/from16 v0, v16

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1960
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 1954
    .end local v16    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_27
    const/4 v2, 0x1

    goto :goto_15
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
    .line 2304
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d00a6

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00a5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f070058

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

    const v1, 0x7f0d037e

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$36;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$36;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2324
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
    .line 2327
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2328
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2329
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$37;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ChatFragment$37;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2334
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2335
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2336
    return-void
.end method

.method private getChatUser(I)Lcom/vkontakte/android/UserProfile;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1353
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 1360
    :goto_0
    return-object v1

    .line 1356
    :cond_0
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 1357
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    const-string v1, "..."

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 1358
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChatUser: unknown user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers(Z)V

    move-object v1, v0

    .line 1360
    goto :goto_0
.end method

.method private getChatUserName(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 1349
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "?"

    goto :goto_0
.end method

.method private getMessage(I)Lcom/vkontakte/android/Message;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1364
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 1365
    .local v1, "m":Lcom/vkontakte/android/Message;
    iget v2, v1, Lcom/vkontakte/android/Message;->id:I

    if-ne v2, p1, :cond_0

    .line 1367
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOnlineString(I)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "online"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1130
    if-lez p1, :cond_1

    const v4, 0x7f0d01d1

    :goto_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, "base":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-ne p1, v7, :cond_2

    :cond_0
    move-object v1, v0

    .line 1139
    :goto_1
    return-object v1

    .line 1130
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0d01cc

    goto :goto_0

    .line 1132
    .restart local v0    # "base":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1133
    .local v1, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 1134
    .local v3, "sp":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1135
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1136
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v2, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v3, v4, v6, v7, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1137
    const-string v4, "\u00a0"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1138
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method private hideJumpButton()V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1226
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1227
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1228
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1229
    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$20;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1239
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1246
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return-void

    .line 1241
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const v2, 0x7f0800db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private isSelected(I)Z
    .locals 3
    .param p1, "mid"    # I

    .prologue
    .line 2363
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 2364
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget v2, v1, Lcom/vkontakte/android/Message;->id:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    .line 2366
    .end local v1    # "msg":Lcom/vkontakte/android/Message;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private jumpToEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1204
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    if-nez v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const v1, 0x5f5e0ff

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1206
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideJumpButton()V

    .line 1222
    :goto_0
    return-void

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1218
    invoke-direct {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    .line 1219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    goto :goto_0
.end method

.method private loadData(Z)V
    .locals 1
    .param p1, "up"    # Z

    .prologue
    .line 1474
    if-eqz p1, :cond_0

    .line 1475
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    .line 1479
    :goto_0
    return-void

    .line 1477
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataDown()V

    goto :goto_0
.end method

.method private loadDataDown()V
    .locals 5

    .prologue
    .line 1637
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoadingDown:Z

    .line 1638
    const/4 v2, 0x0

    .line 1639
    .local v2, "startMid":I
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadingDown:Z

    if-eqz v3, :cond_0

    const/16 v0, 0x1e

    .line 1640
    .local v0, "count":I
    :goto_0
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    sub-int v1, v3, v0

    .line 1641
    .local v1, "offset":I
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$30;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatFragment$30;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {v3, v1, v0, v2, v4}, Lcom/vkontakte/android/data/Messages;->getHistory(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    .line 1743
    return-void

    .line 1639
    .end local v0    # "count":I
    .end local v1    # "offset":I
    :cond_0
    const/16 v0, 0x3c

    goto :goto_0
.end method

.method private loadDataUp(Z)V
    .locals 5
    .param p1, "fromUnread"    # Z

    .prologue
    .line 1482
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    .line 1483
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1484
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 1485
    .local v2, "startMid":I
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    if-eqz v3, :cond_1

    const/16 v0, 0x1e

    .line 1486
    .local v0, "count":I
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 1487
    const/4 v2, -0x1

    .line 1488
    const/16 v1, -0x14

    .line 1494
    :cond_0
    :goto_1
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$29;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    invoke-static {v3, v1, v0, v2, v4}, Lcom/vkontakte/android/data/Messages;->getHistory(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    .line 1634
    return-void

    .line 1485
    .end local v0    # "count":I
    :cond_1
    const/16 v0, 0x3c

    goto :goto_0

    .line 1489
    .restart local v0    # "count":I
    :cond_2
    if-nez p1, :cond_3

    .line 1490
    const/4 v1, 0x0

    goto :goto_1

    .line 1491
    :cond_3
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    if-lez v3, :cond_0

    .line 1492
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v1, v3, v4

    goto :goto_1
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
    .line 2339
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$38;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$38;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {p1, v0}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 2360
    return-void
.end method

.method private markAsRead()V
    .locals 4

    .prologue
    .line 2193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2194
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 2195
    .local v2, "msg":Lcom/vkontakte/android/Message;
    iget-boolean v3, v2, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v3, :cond_0

    .line 2196
    iget v3, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2199
    .end local v2    # "msg":Lcom/vkontakte/android/Message;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2200
    invoke-static {v1}, Lcom/vkontakte/android/data/Messages;->markAsRead(Ljava/util/ArrayList;)V

    .line 2202
    :cond_2
    return-void
.end method

.method private prependMessages(Ljava/util/List;)V
    .locals 14
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
    .line 2391
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_0

    .line 2434
    :goto_0
    return-void

    .line 2392
    :cond_0
    const/4 v6, -0x1

    .line 2393
    .local v6, "itemOffset":I
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2394
    .local v0, "firstVisible":I
    if-nez v0, :cond_4

    .line 2395
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_1

    .line 2396
    add-int/lit8 v0, v0, 0x2

    .line 2397
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2410
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2411
    .local v7, "itemsBefore":I
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2412
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2413
    .local v2, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v11, v11, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v11, v11, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v11, :cond_6

    const/4 v10, 0x1

    .line 2414
    .local v10, "wasDate":Z
    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, p1, v2, v11, v12}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 2415
    .local v8, "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2416
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    move-result v9

    .line 2417
    .local v9, "ndates":I
    if-eqz v10, :cond_7

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v11, v11, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v11, v11, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-eqz v11, :cond_7

    :cond_2
    const/4 v10, 0x1

    .line 2418
    :goto_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2419
    sub-int/2addr v0, v9

    .line 2422
    const/4 v1, 0x0

    .line 2423
    .local v1, "foundSeparator":Z
    const/4 v3, 0x0

    .line 2424
    .local v3, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2425
    .local v5, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v11, v5, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_3

    .line 2426
    const/4 v1, 0x1

    .line 2427
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    add-int/lit8 v12, v3, 0x1

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2429
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2399
    .end local v1    # "foundSeparator":Z
    .end local v2    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v7    # "itemsBefore":I
    .end local v8    # "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .end local v9    # "ndates":I
    .end local v10    # "wasDate":Z
    :cond_4
    const/4 v11, 0x1

    if-ne v0, v11, :cond_5

    .line 2400
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_1

    .line 2401
    add-int/lit8 v0, v0, 0x1

    .line 2402
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v6

    goto/16 :goto_1

    .line 2405
    :cond_5
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 2406
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v6

    goto/16 :goto_1

    .line 2413
    .restart local v2    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "itemsBefore":I
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2417
    .restart local v8    # "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .restart local v9    # "ndates":I
    .restart local v10    # "wasDate":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 2431
    .restart local v1    # "foundSeparator":Z
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    if-nez v1, :cond_9

    .line 2432
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v12, v0

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2433
    :cond_9
    invoke-direct {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private rebuildItems()V
    .locals 5

    .prologue
    .line 1799
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1801
    .local v0, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1802
    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 1803
    return-void
.end method

.method private removeRepeatingDates()I
    .locals 7

    .prologue
    .line 2003
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    const/4 v2, 0x0

    .line 2005
    .local v2, "prevDay":I
    const/4 v3, 0x0

    .line 2006
    .local v3, "prevIsDate":Z
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2007
    .local v1, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v5, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    iget-object v5, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v5, :cond_2

    .line 2009
    iget v5, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    if-eq v5, v2, :cond_0

    if-eqz v3, :cond_1

    .line 2010
    :cond_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2012
    :cond_1
    iget v2, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    .line 2013
    const/4 v3, 0x1

    goto :goto_0

    .line 2015
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2018
    .end local v1    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2020
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    return v5
.end method

.method private removeSeparator()V
    .locals 4

    .prologue
    .line 2066
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2067
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2068
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2069
    .local v0, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 2070
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2071
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    .line 2072
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2076
    .end local v0    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_1
    return-void
.end method

.method private restartTypingTimer()V
    .locals 4

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1372
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    .line 1373
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$24;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1381
    return-void
.end method

.method private restartTypingTimer(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1384
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

    .line 1385
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1386
    .local v0, "typingTimer":Ljava/util/Timer;
    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$25;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$25;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1395
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    return-void
.end method

.method private restoreDraft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1075
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    .line 1076
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

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "drafts"

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1078
    .local v4, "prefs":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1079
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attach"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1082
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attach"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    .line 1083
    .local v3, "is":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1084
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1085
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v3, v6}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/WriteBar;->addAttachment(Lcom/vkontakte/android/Attachment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1087
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    .line 1091
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1092
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attach"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private retryFailed(Lcom/vkontakte/android/Message;)V
    .locals 12
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    const/4 v11, 0x0

    .line 2370
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2371
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2372
    .local v6, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2373
    .local v4, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v7, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    iget v8, p1, Lcom/vkontakte/android/Message;->id:I

    if-ne v7, v8, :cond_0

    .line 2374
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2377
    .end local v4    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2378
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2379
    .local v3, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v7, p1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2380
    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 2381
    iget v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    iget-object v8, p1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iget-object v9, p1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    iget-object v10, p1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-static {v7, v8, v9, v10, v11}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;

    move-result-object v5

    .line 2382
    .local v5, "m":Lcom/vkontakte/android/Message;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2384
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2386
    .local v1, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {p0, v0, v1, v8, v11}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2387
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2388
    return-void
.end method

.method private saveDraft()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1046
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    .line 1047
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "drafts"

    invoke-virtual {v8, v9, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1048
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 1049
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attach"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1072
    :goto_0
    return-void

    .line 1052
    :cond_0
    const/4 v7, 0x0

    .line 1053
    .local v7, "satts":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1055
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1056
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1057
    .local v5, "os":Ljava/io/DataOutputStream;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1058
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1059
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v5}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1062
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v8

    .line 1066
    :cond_1
    :goto_2
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v10}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1068
    .local v3, "ed":Landroid/content/SharedPreferences$Editor;
    if-eqz v7, :cond_2

    .line 1069
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attach"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1071
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1061
    .end local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_2
.end method

.method private sendMessage()V
    .locals 13

    .prologue
    .line 2080
    iget-boolean v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 2132
    :cond_0
    :goto_0
    return-void

    .line 2081
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/ErrorView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    .line 2082
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2083
    .local v7, "msg":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    .line 2084
    .local v2, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2085
    .local v4, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    const/4 v8, -0x1

    .line 2086
    .local v8, "uploadID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 2087
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v9, v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    if-eqz v9, :cond_2

    .line 2088
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2089
    check-cast v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    iget-object v9, v0, Lcom/vkontakte/android/FwdMessagesAttachment;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2093
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 2095
    :cond_4
    iget v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const/4 v10, 0x0

    invoke-static {v9, v7, v2, v4, v10}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;

    move-result-object v6

    .line 2096
    .local v6, "m":Lcom/vkontakte/android/Message;
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2097
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 2098
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/WriteBar;->clearAttachments()V

    .line 2099
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2100
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    new-instance v10, Lcom/vkontakte/android/fragments/ChatFragment$33;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/fragments/ChatFragment$33;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    const-wide/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2105
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "send msg, offset="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    iget v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    if-eqz v9, :cond_5

    .line 2107
    const/4 v9, 0x0

    iput v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    .line 2108
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    .line 2109
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2110
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2111
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2112
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2113
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    const v10, 0x7f0800de

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2114
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    const v10, 0x7f0800dd

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2115
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    const v10, 0x7f0800de

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2116
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    const v10, 0x7f0800dd

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2117
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideJumpButton()V

    .line 2118
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2119
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    .line 2120
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    .line 2122
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2123
    .local v1, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2125
    .local v3, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v1, v3, v10, v11}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2126
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 2127
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2128
    invoke-direct {p0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 2129
    iget-boolean v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    if-eqz v9, :cond_0

    .line 2130
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeSeparator()V

    goto/16 :goto_0
.end method

.method private sendSticker(Lcom/vkontakte/android/StickerAttachment;)V
    .locals 13
    .param p1, "s"    # Lcom/vkontakte/android/StickerAttachment;

    .prologue
    const v12, 0x7f0800de

    const v11, 0x7f0800dd

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2135
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2172
    :cond_0
    :goto_0
    return-void

    .line 2136
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/ErrorView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2138
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2139
    iget v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const-string v5, ""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5, v1, v6, v8}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;

    move-result-object v3

    .line 2140
    .local v3, "m":Lcom/vkontakte/android/Message;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2141
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$34;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatFragment$34;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2146
    iget v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    if-eqz v4, :cond_2

    .line 2147
    iput v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    .line 2148
    iput-boolean v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    .line 2149
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2150
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2151
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2152
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2153
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2154
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2156
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2157
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideJumpButton()V

    .line 2158
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    invoke-direct {p0, v9}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    .line 2160
    iput-boolean v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    .line 2162
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2163
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    .local v2, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v9, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2166
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 2167
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2168
    invoke-direct {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 2169
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    if-eqz v4, :cond_0

    .line 2170
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeSeparator()V

    goto/16 :goto_0
.end method

.method private sendTypingIfNeeded()V
    .locals 4

    .prologue
    .line 2205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->lastTypingRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->lastTypingRequest:J

    .line 2207
    new-instance v0, Lcom/vkontakte/android/api/MessagesSetActivity;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesSetActivity;-><init>(I)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/MessagesSetActivity;->exec()Lcom/vkontakte/android/APIRequest;

    .line 2209
    :cond_0
    return-void
.end method

.method private showMessageOptions(Lcom/vkontakte/android/Message;)V
    .locals 3
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 2259
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-boolean v1, p1, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0d0272

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x7f0d008e

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0d009d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2260
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0165

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$35;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$35;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2301
    return-void

    .line 2259
    .end local v0    # "items":[Ljava/lang/String;
    :cond_0
    const v1, 0x7f0d016c

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

    .line 1282
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 1283
    .local v3, "visible":Z
    :goto_0
    if-ne v3, p1, :cond_1

    .line 1312
    :goto_1
    return-void

    .end local v3    # "visible":Z
    :cond_0
    move v3, v5

    .line 1282
    goto :goto_0

    .line 1284
    .restart local v3    # "visible":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 1285
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1286
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1287
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1288
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, -0x3ec00000    # -12.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1289
    .local v1, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1290
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 1291
    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$22;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatFragment$22;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1296
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 1297
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1298
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1299
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1300
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1301
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1302
    .local v2, "tv":Landroid/widget/TextView;
    const v4, -0x796957

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1303
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 1305
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "ta":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1306
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1307
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1308
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$23;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatFragment$23;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method private updateChatUsers(Z)V
    .locals 2
    .param p1, "forceReload"    # Z

    .prologue
    const v1, 0x77359400

    .line 1143
    if-eqz p1, :cond_0

    .line 1144
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 1145
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v0, v1

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$19;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 1201
    return-void
.end method

.method private updateChatUsersPhotos()V
    .locals 14

    .prologue
    const v13, 0x7f0800d5

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1746
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1747
    .local v7, "replace":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1749
    .local v4, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v8, v12, :cond_1

    iget v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    if-lez v8, :cond_1

    .line 1750
    iget v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-direct {p0, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->getMessage(I)Lcom/vkontakte/android/Message;

    move-result-object v5

    .line 1752
    .local v5, "m":Lcom/vkontakte/android/Message;
    iget-object v8, v5, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_1

    iget-object v8, v5, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v9, "action"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1753
    new-array v8, v11, [Lcom/vkontakte/android/Message;

    aput-object v5, v8, v10

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    .end local v5    # "m":Lcom/vkontakte/android/Message;
    :cond_1
    iget-boolean v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-nez v8, :cond_0

    .line 1758
    iget v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_2

    iget v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v8, v11, :cond_0

    .line 1759
    :cond_2
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/Message;

    .line 1760
    .local v6, "msg":Lcom/vkontakte/android/Message;
    iget v8, v6, Lcom/vkontakte/android/Message;->id:I

    iget v9, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    if-ne v8, v9, :cond_3

    .line 1761
    iget-object v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 1762
    .local v3, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    iget v8, v3, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    if-ne v8, v13, :cond_4

    .line 1763
    iget-object v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1767
    .end local v3    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_5
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v9, v6, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1768
    new-instance v3, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    const/4 v8, 0x0

    invoke-direct {v3, p0, v8}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    .line 1769
    .restart local v3    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    iput v13, v3, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1770
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v9, v6, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    iget-object v8, v8, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v8, v3, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1771
    iget-object v8, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1785
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    .end local v4    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v6    # "msg":Lcom/vkontakte/android/Message;
    :cond_6
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 1786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_8

    .line 1787
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v8, v8, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v8, v12, :cond_7

    .line 1788
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1789
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1786
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1794
    .end local v0    # "i":I
    :cond_8
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 1795
    return-void
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2026
    const-string v0, "vk"

    const-string v1, "update list when activity is null!!!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    :goto_0
    return-void

    .line 2029
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$32;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$32;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateOnline(I)V
    .locals 2
    .param p1, "online"    # I

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->getOnlineString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1097
    if-nez p1, :cond_0

    .line 1098
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetLastActivity;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesGetLastActivity;-><init>(I)V

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$18;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetLastActivity;->setCallback(Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1127
    :cond_0
    return-void
.end method

.method private updateTyping()V
    .locals 13

    .prologue
    const v12, 0x7f0d0069

    const v10, 0x7f0d0068

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1315
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1316
    :cond_1
    iget v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v8, 0x77359400

    if-ge v5, v8, :cond_2

    .line 1317
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1318
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    aput-object v8, v6, v7

    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1321
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->showTyping(Z)V

    .line 1322
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1323
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1324
    .restart local v3    # "tv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 1325
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUserName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-virtual {v8, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    :goto_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, -0x270f

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_3
    move v5, v7

    .line 1321
    goto :goto_1

    .line 1327
    .restart local v3    # "tv":Landroid/widget/TextView;
    :cond_4
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 1328
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUserName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d01c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUserName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v7

    invoke-virtual {v8, v12, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1331
    :cond_5
    const-string v2, ""

    .line 1332
    .local v2, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1333
    .local v0, "i":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1334
    .local v4, "uid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUserName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1335
    add-int/lit8 v5, v0, 0x2

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v5, v8, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d01c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1337
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1336
    :cond_7
    add-int/lit8 v5, v0, 0x1

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v5, v8, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1339
    .end local v4    # "uid":I
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v5, v12, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getPeerID()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    return v0
.end method

.method public hideEmojiPopup()V
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->hide()V

    .line 1043
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2175
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2176
    const/16 v2, 0x2710

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v2, p1, p2, p3}, Lcom/vkontakte/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 2177
    :cond_0
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 2178
    const-string v2, "profile"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 2179
    .local v1, "profile":Lcom/vkontakte/android/UserProfile;
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "from_search"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2180
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->addFwdMessages(Ljava/util/ArrayList;)V

    .line 2190
    .end local v1    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_1
    :goto_0
    return-void

    .line 2182
    .restart local v1    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2183
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2184
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2185
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_3

    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2186
    :cond_3
    const-string v2, "fwd"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2187
    const-string v2, "ChatFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 26
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 668
    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "title"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "id"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    .line 673
    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$6;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    .line 688
    new-instance v20, Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const v23, 0x7f020104

    const/16 v24, 0x1

    invoke-direct/range {v20 .. v24}, Lcom/vkontakte/android/EmojiPopup;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$7;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/EmojiPopup;->setStickerClickListener(Lcom/vkontakte/android/EmojiPopup$StickerClickListener;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 696
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 697
    .local v19, "wrap":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-direct/range {v21 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    new-instance v20, Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/WriteBar;->isChat:Z

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->setFragment(Landroid/app/Fragment;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    const v21, 0x7f0801e1

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x7f020104

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "from_search"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v20 .. v22}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    :cond_0
    const v20, -0x191410

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 707
    const v20, 0x7f03004a

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    .line 708
    const v20, 0x7f03004a

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    .line 710
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/high16 v21, 0x40a00000    # 5.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/high16 v22, 0x40a00000    # 5.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/high16 v23, 0x40a00000    # 5.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    const/high16 v24, 0x40a00000    # 5.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    invoke-virtual/range {v20 .. v24}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x10

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 713
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 714
    .local v16, "tiv1":Landroid/widget/ImageView;
    const v20, 0x7f020163

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 715
    sget-object v20, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 716
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v21, 0x41400000    # 12.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 718
    new-instance v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 719
    .local v17, "tiv2":Landroid/widget/ImageView;
    const v20, 0x7f020163

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 720
    sget-object v20, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 721
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 722
    .local v10, "matrix":Landroid/graphics/Matrix;
    const/high16 v20, -0x3ec00000    # -12.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 723
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 724
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v21, 0x41a00000    # 20.0f

    invoke-static/range {v21 .. v21}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    const v20, -0x19130e

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 727
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 728
    .local v18, "ttv":Landroid/widget/TextView;
    const v20, -0x796957

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 729
    const/16 v20, 0x1

    const/high16 v21, 0x41600000    # 14.0f

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 730
    const v20, 0x33d6bf95    # 1.0E-7f

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const v23, -0xf0b09

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 731
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v20, v0

    const v21, 0x77359400

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d0068

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "title"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    :cond_1
    const/high16 v20, 0x40a00000    # 5.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/16 v21, 0x0

    const/high16 v22, 0x40a00000    # 5.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 734
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 738
    new-instance v20, Lcom/vkontakte/android/ui/FixedScrollListView;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    .line 739
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const v21, -0x191410

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 740
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const v21, -0x191410

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "from_search"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 760
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/drawable/ColorDrawable;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 769
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0d01a0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/high16 v21, 0x41900000    # 18.0f

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextSize(F)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/high16 v21, -0x80000000

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x11

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setGravity(I)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 776
    new-instance v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 782
    new-instance v20, Landroid/widget/ProgressBar;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v20, v0

    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v22, 0x42480000    # 50.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/high16 v23, 0x42480000    # 50.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    const/16 v24, 0x11

    invoke-direct/range {v21 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v19 .. v21}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f030030

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "from_search"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 790
    new-instance v15, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 791
    .local v15, "shadow":Landroid/view/View;
    new-instance v20, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v21, -0x1

    const/high16 v22, 0x40800000    # 4.0f

    invoke-static/range {v22 .. v22}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v22

    const/16 v23, 0x50

    invoke-direct/range {v20 .. v23}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    const v20, 0x7f020046

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 793
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f030049

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    move-object/from16 v20, v0

    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    const/16 v24, 0x50

    invoke-direct/range {v21 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v19 .. v21}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$9;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    .end local v15    # "shadow":Landroid/view/View;
    :cond_3
    new-instance v20, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v23}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f0800dd

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$10;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "from_search"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$11;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 873
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    const v21, 0x7f0801e0

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$12;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    const v21, 0x7f0801e1

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$13;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$13;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->setHasOptionsMenu(Z)V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    const v21, 0x7f0801df

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$14;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    const v21, 0x7f0801df

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$15;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$15;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    const v21, 0x7f0801df

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$16;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$16;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 929
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "fwd"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "fwd"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 931
    .local v7, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/ui/WriteBar;->addFwdMessages(Ljava/util/ArrayList;)V

    .line 934
    .end local v7    # "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "post"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "post"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/NewsEntry;

    .line 936
    .local v12, "p":Lcom/vkontakte/android/NewsEntry;
    const/4 v5, 0x0

    .line 937
    .local v5, "att":Lcom/vkontakte/android/Attachment;
    iget v0, v12, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 938
    new-instance v5, Lcom/vkontakte/android/PostAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    invoke-direct {v5, v12}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 942
    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    :cond_6
    :goto_1
    if-eqz v5, :cond_7

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/WriteBar;->addAttachment(Lcom/vkontakte/android/Attachment;)V

    .line 946
    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    .end local v12    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "photos"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "photos"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 948
    .local v14, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 949
    .local v13, "photo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/WriteBar;->addAttachment(Lcom/vkontakte/android/Attachment;)V

    goto :goto_2

    .line 747
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "photo":Ljava/lang/String;
    .end local v14    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const/high16 v21, 0x7f030000

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f080022

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v21, 0x7f0d01d3

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f080022

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const v21, 0x7f02008b

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f080021

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$8;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 939
    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v12    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_9
    iget-object v0, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 940
    iget-object v0, v12, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    check-cast v5, Lcom/vkontakte/android/Attachment;

    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    goto/16 :goto_1

    .line 953
    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    .end local v12    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/fragments/ChatFragment$17;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$17;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "from_search"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "from_search"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Message;

    .line 964
    .local v9, "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .local v6, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .local v11, "mm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v11, v6, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 969
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 970
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 971
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f0d0165

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->setTitle(I)V

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v20, v0

    const v21, 0x77359400

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 976
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers(Z)V

    .line 986
    .end local v6    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "m":Lcom/vkontakte/android/Message;
    .end local v11    # "mm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_b
    :goto_3
    return-void

    .line 978
    :cond_c
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadData(Z)V

    .line 979
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v20, v0

    const v21, 0x77359400

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v20, v0

    if-lez v20, :cond_d

    .line 980
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/data/Friends;->getOnlineStatus(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateOnline(I)V

    .line 982
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v20, v0

    const v21, 0x77359400

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 983
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers(Z)V

    goto :goto_3
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2865
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideEmojiPopup()V

    .line 2866
    const/4 v0, 0x1

    .line 2868
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 1034
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1035
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 1037
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/vkontakte/android/EmojiPopup;->onKeyboardStateChanged(ZI)V

    .line 1039
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 989
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 990
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_search"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 991
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 992
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 993
    const-string v1, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    const-string v1, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    const-string v1, "com.vkontakte.android.TYPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 996
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    const-string v1, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    const-string v1, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 999
    const-string v1, "com.vkontakte.android.MESSAGE_ID_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1000
    const-string v1, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1001
    const-string v1, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1002
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1004
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1399
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "from_search"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1400
    const v6, 0x7f0d028c

    invoke-interface {p1, v6}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1401
    .local v2, "item":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1402
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1451
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    const v6, 0x7f080009

    const v7, 0x7f0d002c

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 1406
    .local v1, "attach":Landroid/view/MenuItem;
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1407
    const v6, 0x7f020082

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1408
    iget v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v7, 0x77359400

    if-ge v6, v7, :cond_3

    .line 1409
    const v6, 0x7f0d0218

    invoke-interface {p1, v8, v8, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 1410
    .restart local v2    # "item":Landroid/view/MenuItem;
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1411
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$26;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lcom/vkontakte/android/fragments/ChatFragment$26;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/content/Context;)V

    .line 1417
    .local v0, "actionView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1419
    .local v4, "photo":Ljava/lang/String;
    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v5

    .local v5, "wasInTop":Z
    if-eqz v5, :cond_2

    .line 1420
    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1423
    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1424
    new-instance v6, Lcom/vkontakte/android/fragments/ChatFragment$27;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/ChatFragment$27;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1433
    if-nez v5, :cond_0

    .line 1434
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-direct {v7, p0, v0}, Lcom/vkontakte/android/fragments/ChatFragment$28;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/widget/ImageView;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1422
    :cond_2
    const v6, 0x7f0201ee

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1447
    .end local v0    # "actionView":Landroid/widget/ImageView;
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v4    # "photo":Ljava/lang/String;
    .end local v5    # "wasInTop":Z
    :cond_3
    const v6, 0x7f080018

    const v7, 0x7f0d0060

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 1448
    .local v3, "members":Landroid/view/MenuItem;
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1449
    const v6, 0x7f020084

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1007
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1008
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_search"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 1011
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2234
    const/4 v3, 0x0

    .line 2235
    .local v3, "msg":Lcom/vkontakte/android/Message;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v7, p3, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v2, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 2236
    .local v2, "mid":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 2237
    .local v1, "m":Lcom/vkontakte/android/Message;
    iget v4, v1, Lcom/vkontakte/android/Message;->id:I

    if-ne v4, v2, :cond_0

    .line 2238
    move-object v3, v1

    .line 2242
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    :cond_1
    if-nez v3, :cond_2

    .line 2256
    :goto_0
    return-void

    .line 2243
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_6

    .line 2244
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2246
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Landroid/view/ActionMode;

    const v7, 0x7f0d028a

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 2247
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->notifyDataSetChanged()V

    .line 2248
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 2249
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 2245
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2252
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v7, 0x7f0801ea

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_2
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_2

    .line 2254
    :cond_6
    invoke-direct {p0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->showMessageOptions(Lcom/vkontakte/android/Message;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2214
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_0

    move v4, v5

    .line 2229
    :goto_0
    return v4

    .line 2215
    :cond_0
    const/4 v3, 0x0

    .line 2216
    .local v3, "msg":Lcom/vkontakte/android/Message;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v7, p3, v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v2, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 2217
    .local v2, "mid":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 2218
    .local v1, "m":Lcom/vkontakte/android/Message;
    iget v4, v1, Lcom/vkontakte/android/Message;->id:I

    if-ne v4, v2, :cond_1

    .line 2219
    move-object v3, v1

    .line 2223
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    :cond_2
    if-nez v3, :cond_3

    move v4, v5

    goto :goto_0

    .line 2224
    :cond_3
    iget-boolean v4, v3, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_0

    .line 2225
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Landroid/view/ActionMode;

    .line 2226
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2227
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Landroid/view/ActionMode;

    const v7, 0x7f0d028a

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 2228
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->notifyDataSetChanged()V

    move v4, v6

    .line 2229
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v6, 0x77359400

    .line 1454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080009

    if-ne v1, v2, :cond_0

    .line 1455
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    const/16 v2, 0x35

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getHeight()I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0x7f02000e

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vkontakte/android/ui/WriteBar;->openAttachMenu(IIII)V

    .line 1457
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f080018

    if-ne v1, v2, :cond_1

    .line 1458
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1459
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1460
    const-string v1, "admin"

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v2, v6

    invoke-static {v2}, Lcom/vkontakte/android/data/Messages;->getChatAdmin(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1461
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1463
    const-string v1, "ChatMembersFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 1465
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1016
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    .line 1018
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 1019
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->saveDraft()V

    .line 1020
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 1021
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1024
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    .line 1026
    sput-object p0, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 1027
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->markAsRead()V

    .line 1028
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->restoreDraft()V

    .line 1029
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->loadRecents()V

    .line 1030
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 1031
    return-void
.end method
