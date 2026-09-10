.class public Lcom/vkontakte/android/fragments/ChatFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
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
        Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;,
        Lcom/vkontakte/android/fragments/ChatFragment$MessagesImagesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lcom/vkontakte/android/fragments/BackListener;"
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

    .line 640
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    .line 141
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    .line 554
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$2;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUserClickListener:Landroid/view/View$OnClickListener;

    .line 567
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->keyboardVisible:Z

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    .line 569
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$3;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionModeCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    .line 622
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$4;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->fwdProfileClickListener:Landroid/view/View$OnClickListener;

    .line 633
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReady:Z

    .line 634
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoadingDown:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadingDown:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReadyDown:Z

    .line 635
    iput v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    .line 636
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    .line 638
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    .line 642
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1773
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 2160
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->markAsRead()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2306
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->showTyping(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1289
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateTyping()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 2033
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeSeparator()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 1

    .prologue
    .line 1970
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->restartTypingTimer()V

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/ChatFragment;I)V
    .locals 0

    .prologue
    .line 1358
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->restartTypingTimer(I)V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/ChatFragment;I)V
    .locals 0

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateOnline(I)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1765
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->rebuildItems()V

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 638
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1991
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 1440
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadData(Z)V

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2271
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->confirmAndDelete(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2294
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->forward(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$35(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUserClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$38(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$39(Lcom/vkontakte/android/fragments/ChatFragment;I)Z
    .locals 1

    .prologue
    .line 2330
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->isSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    return v0
.end method

.method static synthetic access$40(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->fwdProfileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$41(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$42(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/EmojiPopup;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    return-object v0
.end method

.method static synthetic access$43(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/StickerAttachment;)V
    .locals 0

    .prologue
    .line 2102
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->sendSticker(Lcom/vkontakte/android/StickerAttachment;)V

    return-void
.end method

.method static synthetic access$44(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1178
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEnd()V

    return-void
.end method

.method static synthetic access$45(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$46(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    return v0
.end method

.method static synthetic access$47(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$48(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    return-void
.end method

.method static synthetic access$49(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$50(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2358
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->prependMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$51(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoadingDown:Z

    return v0
.end method

.method static synthetic access$52(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadingDown:Z

    return v0
.end method

.method static synthetic access$53(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    return v0
.end method

.method static synthetic access$54(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadingDown:Z

    return-void
.end method

.method static synthetic access$55(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReadyDown:Z

    return-void
.end method

.method static synthetic access$56(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2404
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->appendMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$58(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 2046
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->sendMessage()V

    return-void
.end method

.method static synthetic access$59(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->keyboardVisible:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers(Z)V

    return-void
.end method

.method static synthetic access$60(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 2172
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->sendTypingIfNeeded()V

    return-void
.end method

.method static synthetic access$61(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$62(Lcom/vkontakte/android/fragments/ChatFragment;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1106
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->getOnlineString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$63(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1713
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsersPhotos()V

    return-void
.end method

.method static synthetic access$64(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$65(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$66(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$67(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$68(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$69(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    return v0
.end method

.method static synthetic access$70(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$71(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$72(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 1450
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    return-void
.end method

.method static synthetic access$73(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1199
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideJumpButton()V

    return-void
.end method

.method static synthetic access$74(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->animateJump()V

    return-void
.end method

.method static synthetic access$75(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoadingDown:Z

    return-void
.end method

.method static synthetic access$76(Lcom/vkontakte/android/fragments/ChatFragment;)Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadOnReadyDown:Z

    return v0
.end method

.method static synthetic access$77(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1604
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataDown()V

    return-void
.end method

.method static synthetic access$78(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 2337
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->retryFailed(Lcom/vkontakte/android/Message;)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/ChatFragment;)I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/ChatFragment;I)V
    .locals 0

    .prologue
    .line 635
    iput p1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    return-void
.end method

.method private animateJump()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1224
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 1225
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1226
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 1227
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1228
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1229
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1230
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    .line 1231
    .local v2, "offset":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v11}, Landroid/widget/ListView;->setAlpha(F)V

    .line 1232
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setTranslationY(F)V

    .line 1233
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v12, v7}, Landroid/widget/ListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1234
    invoke-virtual {v1, v12, v7}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1235
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1236
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

    .line 1237
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

    .line 1236
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1238
    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$20;

    invoke-direct {v4, p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$20;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1245
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1246
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1247
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1249
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

    .line 2405
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2420
    :cond_0
    :goto_0
    return-void

    .line 2406
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 2407
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2409
    .local v0, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, v0, v3, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 2410
    .local v1, "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2411
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 2412
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2413
    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 2414
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/fragments/ChatFragment$38;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/ChatFragment$38;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2419
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
    .line 1942
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message$FwdMessage;>;"
    .local p6, "fwdUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    const/4 v8, 0x0

    .line 1944
    .local v8, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1967
    return-object v11

    .line 1944
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/Message$FwdMessage;

    .line 1945
    .local v10, "m":Lcom/vkontakte/android/Message$FwdMessage;
    new-instance v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v1, 0x0

    invoke-direct {v9, p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;)V

    .line 1946
    .local v9, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1947
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

    .line 1948
    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1949
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1950
    .local v12, "sz":I
    const/high16 v1, 0x42e60000    # 115.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sub-int v1, v12, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    mul-int v2, v2, p2

    sub-int/2addr v1, v2

    iget-object v2, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-static {v1, v12, v2}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 1951
    move/from16 v0, p2

    iput v0, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    .line 1952
    const/4 v1, 0x3

    iput v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1953
    move/from16 v0, p3

    iput-boolean v0, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    .line 1954
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1955
    move/from16 v0, p4

    iput v0, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 1956
    move/from16 v0, p5

    iput-boolean v0, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 1957
    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    .line 1958
    const-string v1, "DELETED"

    iget-object v2, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdName:Ljava/lang/String;

    .line 1959
    :cond_1
    iget v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    iput v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdTime:I

    .line 1960
    iget v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    iput v1, v9, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdUid:I

    .line 1961
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
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

    .line 1963
    :cond_2
    iget-object v1, v10, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0xa

    move/from16 v0, p2

    if-gt v0, v1, :cond_3

    .line 1964
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

    .line 1965
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1947
    .end local v12    # "sz":I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;
    .locals 32
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
    .line 1774
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    .local p2, "fwdUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    .local v22, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1938
    :cond_0
    return-object v22

    .line 1776
    :cond_1
    const/16 v20, 0x0

    .line 1777
    .local v20, "prevDay":I
    const/16 v21, 0x1

    .line 1778
    .local v21, "prevReadState":Z
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->readState:Z

    if-eqz v2, :cond_c

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    iget-boolean v2, v2, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v2, :cond_c

    const/16 v18, 0x1

    .line 1779
    .local v18, "needDivider":Z
    :goto_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 1780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    .local v13, "i":I
    :goto_1
    if-gez v13, :cond_d

    .line 1787
    .end local v13    # "i":I
    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/Message;

    .line 1789
    .local v16, "m":Lcom/vkontakte/android/Message;
    new-instance v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;)V

    .line 1790
    .local v15, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1791
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1792
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1793
    .local v10, "act":Ljava/lang/String;
    const/16 v29, 0x0

    .line 1794
    .local v29, "uids":[I
    const-string v2, "chat_photo_update"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1795
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v19

    .line 1796
    .local v19, "p":Lcom/vkontakte/android/UserProfile;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_f

    const v2, 0x7f080216

    :goto_4
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1797
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v29, v0

    .end local v29    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v29, v2

    .line 1844
    .end local v19    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v29    # "uids":[I
    :goto_5
    if-eqz v29, :cond_3

    iget-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_3

    .line 1845
    iget-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    iget-object v4, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/StyleSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v24

    .line 1846
    .local v24, "spans":[Ljava/lang/Object;
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Len = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    move-object/from16 v0, v24

    array-length v2, v0

    if-lt v13, v2, :cond_23

    .line 1859
    .end local v13    # "i":I
    .end local v24    # "spans":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_24

    .line 1865
    .end local v10    # "act":Ljava/lang/String;
    .end local v29    # "uids":[I
    :cond_5
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_25

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    array-length v2, v2

    if-lez v2, :cond_25

    const/4 v2, 0x1

    :goto_8
    iput-boolean v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->hasLinks:Z

    .line 1866
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    const/high16 v3, 0x43af0000    # 350.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 1868
    .local v27, "sz":I
    const/high16 v2, 0x42e60000    # 115.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int v2, v27, v2

    iget-object v3, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-static {v2, v0, v3}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 1869
    const/4 v2, 0x0

    iput v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->fwdLevel:I

    .line 1870
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->out:Z

    iput-boolean v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    .line 1872
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1873
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->id:I

    iput v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    .line 1874
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->readState:Z

    iput-boolean v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 1875
    if-eqz v18, :cond_6

    if-eqz v21, :cond_6

    iget-boolean v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    if-nez v2, :cond_6

    iget-boolean v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    if-nez v2, :cond_6

    .line 1876
    new-instance v25, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;)V

    .line 1877
    .local v25, "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    const/4 v2, 0x6

    move-object/from16 v0, v25

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1878
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1879
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1880
    const-string v2, ""

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1881
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1882
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    .line 1884
    .end local v25    # "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_6
    if-nez p4, :cond_7

    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->time:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    const v3, 0x15180

    div-int/2addr v2, v3

    move/from16 v0, v20

    if-eq v2, v0, :cond_7

    .line 1885
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->time:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    const v3, 0x15180

    div-int v20, v2, v3

    .line 1886
    new-instance v25, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;)V

    .line 1887
    .restart local v25    # "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    const/4 v2, 0x5

    move-object/from16 v0, v25

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1888
    move-object/from16 v0, v16

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

    move-object/from16 v0, v25

    iput v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    .line 1889
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    .line 1890
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    .line 1891
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    .end local v25    # "srv":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_7
    iget-boolean v0, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    move/from16 v21, v0

    .line 1894
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_8

    iget-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    :cond_8
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1895
    :cond_9
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_28

    .line 1896
    const/4 v2, 0x2

    iput v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1897
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    iget-boolean v5, v0, Lcom/vkontakte/android/Message;->out:Z

    move-object/from16 v0, v16

    iget v6, v0, Lcom/vkontakte/android/Message;->id:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/vkontakte/android/Message;->readState:Z

    move-object/from16 v2, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/ArrayList;IZIZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1898
    .local v12, "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_27

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_27

    .line 1899
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 1900
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x1

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1908
    :cond_a
    :goto_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1909
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    check-cast v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1911
    .restart local v15    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v3, 0x77359400

    if-le v2, v3, :cond_b

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v2, :cond_b

    .line 1912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1913
    new-instance v14, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$Image;)V

    .line 1914
    .local v14, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    const v2, 0x7f0900f0

    iput v2, v14, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v2, v14, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1916
    iget-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1934
    .end local v12    # "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .end local v14    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_b
    :goto_a
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->time:I

    iput v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    .line 1935
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->sendFailed:Z

    iput-boolean v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    goto/16 :goto_3

    .line 1778
    .end local v15    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v16    # "m":Lcom/vkontakte/android/Message;
    .end local v18    # "needDivider":Z
    .end local v27    # "sz":I
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1781
    .restart local v13    # "i":I
    .restart local v18    # "needDivider":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_e

    .line 1782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v2, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    const v3, 0x15180

    div-int v20, v2, v3

    .line 1783
    goto/16 :goto_2

    .line 1780
    :cond_e
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .line 1796
    .end local v13    # "i":I
    .restart local v10    # "act":Ljava/lang/String;
    .restart local v15    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .restart local v16    # "m":Lcom/vkontakte/android/Message;
    .restart local v19    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v29    # "uids":[I
    :cond_f
    const v2, 0x7f080215

    goto/16 :goto_4

    .line 1798
    .end local v19    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_10
    const-string v2, "chat_photo_remove"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1799
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v19

    .line 1800
    .restart local v19    # "p":Lcom/vkontakte/android/UserProfile;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_11

    const v2, 0x7f080225

    :goto_b
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1801
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v29, v0

    .end local v29    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v29, v2

    .line 1802
    .restart local v29    # "uids":[I
    goto/16 :goto_5

    .line 1800
    :cond_11
    const v2, 0x7f080224

    goto :goto_b

    .line 1802
    .end local v19    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_12
    const-string v2, "chat_create"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1803
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v19

    .line 1804
    .restart local v19    # "p":Lcom/vkontakte/android/UserProfile;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_13

    const v2, 0x7f080343

    :goto_c
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action_text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1805
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v29, v0

    .end local v29    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v29, v2

    .line 1806
    .restart local v29    # "uids":[I
    goto/16 :goto_5

    .line 1804
    :cond_13
    const v2, 0x7f080342

    goto :goto_c

    .line 1806
    .end local v19    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_14
    const-string v2, "chat_title_update"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1807
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v19

    .line 1808
    .restart local v19    # "p":Lcom/vkontakte/android/UserProfile;
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_15

    const v2, 0x7f080345

    :goto_d
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action_text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1809
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v29, v0

    .end local v29    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v29, v2

    .line 1810
    .restart local v29    # "uids":[I
    goto/16 :goto_5

    .line 1808
    :cond_15
    const v2, 0x7f080344

    goto :goto_d

    .line 1810
    .end local v19    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_16
    const-string v2, "chat_invite_user"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1811
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_mid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 1812
    .local v28, "uid":I
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v19

    .line 1813
    .restart local v19    # "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v0, v28

    if-ne v0, v2, :cond_18

    .line 1814
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_17

    const v2, 0x7f08034d

    :goto_e
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1815
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v29, v0

    .end local v29    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v29, v2

    .line 1816
    .restart local v29    # "uids":[I
    goto/16 :goto_5

    .line 1814
    :cond_17
    const v2, 0x7f08034c

    goto :goto_e

    .line 1818
    :cond_18
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1819
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1822
    .local v17, "name":Ljava/lang/String;
    :goto_f
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_1b

    const v2, 0x7f080347

    :goto_10
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<"

    const-string v8, "&lt;"

    move-object/from16 v0, v17

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

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1823
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v29, v0

    .end local v29    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v29, v2

    const/4 v2, 0x1

    aput v28, v29, v2

    .line 1825
    .restart local v29    # "uids":[I
    goto/16 :goto_5

    .line 1821
    .end local v17    # "name":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    .restart local v17    # "name":Ljava/lang/String;
    :goto_11
    goto/16 :goto_f

    .end local v17    # "name":Ljava/lang/String;
    :cond_1a
    const-string v17, "..."

    goto :goto_11

    .line 1822
    .restart local v17    # "name":Ljava/lang/String;
    :cond_1b
    const v2, 0x7f080346

    goto/16 :goto_10

    .line 1825
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v28    # "uid":I
    :cond_1c
    const-string v2, "chat_kick_user"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1826
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_mid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v28

    .line 1827
    .restart local v28    # "uid":I
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getChatUser(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v19

    .line 1828
    .restart local v19    # "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v0, v28

    if-ne v0, v2, :cond_1e

    .line 1829
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_1d

    const v2, 0x7f08034b

    :goto_12
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1830
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v29, v0

    .end local v29    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v29, v2

    .line 1831
    .restart local v29    # "uids":[I
    goto/16 :goto_5

    .line 1829
    :cond_1d
    const v2, 0x7f08034a

    goto :goto_12

    .line 1833
    :cond_1e
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1834
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v3, "action_email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1837
    .restart local v17    # "name":Ljava/lang/String;
    :goto_13
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v2, :cond_21

    const v2, 0x7f080349

    :goto_14
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    const-string v8, "<"

    const-string v31, "&lt;"

    move-object/from16 v0, v31

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

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<"

    const-string v8, "&lt;"

    move-object/from16 v0, v17

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

    iput-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    .line 1838
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v29, v0

    .end local v29    # "uids":[I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    aput v3, v29, v2

    const/4 v2, 0x1

    aput v28, v29, v2

    .line 1841
    .restart local v29    # "uids":[I
    goto/16 :goto_5

    .line 1836
    .end local v17    # "name":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->userNamesAcc:Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    .restart local v17    # "name":Ljava/lang/String;
    :goto_15
    goto/16 :goto_13

    .end local v17    # "name":Ljava/lang/String;
    :cond_20
    const-string v17, "..."

    goto :goto_15

    .line 1837
    .restart local v17    # "name":Ljava/lang/String;
    :cond_21
    const v2, 0x7f080348

    goto/16 :goto_14

    .line 1842
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v28    # "uid":I
    :cond_22
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown message action "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1848
    .restart local v13    # "i":I
    .restart local v24    # "spans":[Ljava/lang/Object;
    :cond_23
    move-object/from16 v0, v29

    array-length v2, v0

    if-ge v13, v2, :cond_3

    .line 1849
    iget-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    aget-object v3, v24, v13

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 1850
    .local v26, "start":I
    iget-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    aget-object v3, v24, v13

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 1851
    .local v11, "end":I
    new-instance v23, Lcom/vkontakte/android/fragments/ChatFragment$30;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vkontakte://profile/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v29, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$30;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/lang/String;)V

    .line 1856
    .local v23, "span":Landroid/text/style/URLSpan;
    iget-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v2, v0, v1, v11, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1847
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 1859
    .end local v11    # "end":I
    .end local v13    # "i":I
    .end local v23    # "span":Landroid/text/style/URLSpan;
    .end local v24    # "spans":[Ljava/lang/Object;
    .end local v26    # "start":I
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Attachment;

    .line 1860
    .local v9, "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v9, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v3, :cond_4

    .line 1861
    check-cast v9, Lcom/vkontakte/android/PhotoAttachment;

    .end local v9    # "a":Lcom/vkontakte/android/Attachment;
    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/vkontakte/android/PhotoAttachment;->paddingAfter:Z

    goto/16 :goto_7

    .line 1865
    .end local v10    # "act":Ljava/lang/String;
    .end local v29    # "uids":[I
    :cond_25
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 1901
    .restart local v12    # "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .restart local v27    # "sz":I
    :cond_26
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 1902
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x2

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1903
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x4

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    goto/16 :goto_9

    .line 1906
    :cond_27
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    const/4 v3, 0x4

    iput v3, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    goto/16 :goto_9

    .line 1922
    .end local v12    # "fwdItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_28
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_29

    const/4 v2, 0x5

    :goto_16
    iput v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    .line 1923
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v3, 0x77359400

    if-le v2, v3, :cond_b

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v2, :cond_b

    .line 1924
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1925
    new-instance v14, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$Image;)V

    .line 1926
    .restart local v14    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    const v2, 0x7f0900f0

    iput v2, v14, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    iget-object v2, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v2, v14, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1928
    iget-object v2, v15, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1922
    .end local v14    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_29
    const/4 v2, 0x1

    goto :goto_16
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
    .line 2272
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2273
    const v1, 0x7f080176

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2274
    const v1, 0x7f080177

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

    .line 2275
    const v1, 0x7f08004e

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$35;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$35;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2290
    const v1, 0x7f08004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2292
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
    .line 2295
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2296
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2297
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$36;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/ChatFragment$36;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2302
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2303
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2304
    return-void
.end method

.method private getChatUser(I)Lcom/vkontakte/android/UserProfile;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 1335
    :goto_0
    return-object v1

    .line 1331
    :cond_0
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 1332
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    const-string v1, "..."

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 1333
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getChatUser: unknown user "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers(Z)V

    move-object v1, v0

    .line 1335
    goto :goto_0
.end method

.method private getChatUserName(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 1324
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
    .line 1339
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1342
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1339
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 1340
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget v2, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method private getOnlineString(I)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "online"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1107
    if-lez p1, :cond_1

    const v4, 0x7f08009b

    :goto_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "base":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-ne p1, v7, :cond_2

    :cond_0
    move-object v1, v0

    .line 1116
    :goto_1
    return-object v1

    .line 1107
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0801ec

    goto :goto_0

    .line 1109
    .restart local v0    # "base":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1110
    .local v1, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    const-string v5, "F"

    invoke-virtual {v4, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v3

    .line 1111
    .local v3, "sp":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020169

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1112
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1113
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v2, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v3, v4, v6, v7, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1114
    const-string v4, "\u00a0"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1115
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method private hideJumpButton()V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 1201
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1202
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

    .line 1203
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1204
    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$19;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1214
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1221
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :goto_0
    return-void

    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const v2, 0x7f0900f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const v2, 0x7f0900f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private isSelected(I)Z
    .locals 3
    .param p1, "mid"    # I

    .prologue
    .line 2331
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2334
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2331
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 2332
    .local v0, "msg":Lcom/vkontakte/android/Message;
    iget v2, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private jumpToEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1179
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const v1, 0x5f5e0ff

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1181
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideJumpButton()V

    .line 1197
    :goto_0
    return-void

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1193
    invoke-direct {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    goto :goto_0
.end method

.method private loadData(Z)V
    .locals 3
    .param p1, "up"    # Z

    .prologue
    .line 1442
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "sd"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Load data"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1443
    if-eqz p1, :cond_0

    .line 1444
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    .line 1448
    :goto_0
    return-void

    .line 1446
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataDown()V

    goto :goto_0
.end method

.method private loadDataDown()V
    .locals 5

    .prologue
    .line 1605
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoadingDown:Z

    .line 1606
    const/4 v2, 0x0

    .line 1607
    .local v2, "startMid":I
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadingDown:Z

    if-eqz v3, :cond_0

    const/16 v0, 0x1e

    .line 1608
    .local v0, "count":I
    :goto_0
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    sub-int v1, v3, v0

    .line 1609
    .local v1, "offset":I
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatFragment$29;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {v3, v1, v0, v2, v4}, Lcom/vkontakte/android/data/Messages;->getHistory(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    .line 1711
    return-void

    .line 1607
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
    .line 1451
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    .line 1452
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1453
    .local v1, "offset":I
    const/4 v2, 0x0

    .line 1454
    .local v2, "startMid":I
    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloading:Z

    if-eqz v3, :cond_1

    const/16 v0, 0x1e

    .line 1455
    .local v0, "count":I
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 1456
    const/4 v2, -0x1

    .line 1457
    const/16 v1, -0x14

    .line 1463
    :cond_0
    :goto_1
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$28;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    invoke-static {v3, v1, v0, v2, v4}, Lcom/vkontakte/android/data/Messages;->getHistory(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V

    .line 1602
    return-void

    .line 1454
    .end local v0    # "count":I
    :cond_1
    const/16 v0, 0x3c

    goto :goto_0

    .line 1458
    .restart local v0    # "count":I
    :cond_2
    if-nez p1, :cond_3

    .line 1459
    const/4 v1, 0x0

    .line 1460
    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    if-lez v3, :cond_0

    .line 1461
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
    .line 2307
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$37;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/ChatFragment$37;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {p1, v0}, Lcom/vkontakte/android/data/Friends;->getUsers(Ljava/util/List;Lcom/vkontakte/android/data/Friends$GetUsersCallback;)V

    .line 2328
    return-void
.end method

.method private markAsRead()V
    .locals 4

    .prologue
    .line 2161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2162
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2168
    invoke-static {v0}, Lcom/vkontakte/android/data/Messages;->markAsRead(Ljava/util/ArrayList;)V

    .line 2170
    :cond_1
    return-void

    .line 2162
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 2163
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget-boolean v3, v1, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/vkontakte/android/Message;->readState:Z

    if-nez v3, :cond_0

    .line 2164
    iget v3, v1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 2359
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    if-nez v10, :cond_0

    .line 2402
    :goto_0
    return-void

    .line 2360
    :cond_0
    const/4 v5, -0x1

    .line 2361
    .local v5, "itemOffset":I
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2362
    .local v0, "firstVisible":I
    if-nez v0, :cond_4

    .line 2363
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_1

    .line 2364
    add-int/lit8 v0, v0, 0x2

    .line 2365
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2378
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2379
    .local v6, "itemsBefore":I
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2381
    .local v2, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v10, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v10, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v10, :cond_6

    const/4 v9, 0x1

    .line 2382
    .local v9, "wasDate":Z
    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p1, v2, v10, v11}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v7

    .line 2383
    .local v7, "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 2384
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    move-result v8

    .line 2385
    .local v8, "ndates":I
    if-eqz v9, :cond_7

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v10, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget-object v10, v10, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-eqz v10, :cond_7

    :cond_2
    const/4 v9, 0x1

    .line 2386
    :goto_3
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2387
    sub-int/2addr v0, v8

    .line 2390
    const/4 v1, 0x0

    .line 2391
    .local v1, "foundSeparator":Z
    const/4 v3, 0x0

    .line 2392
    .local v3, "i":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 2399
    if-nez v1, :cond_3

    .line 2400
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v11, v0

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2401
    :cond_3
    invoke-direct {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 2367
    .end local v1    # "foundSeparator":Z
    .end local v2    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "i":I
    .end local v6    # "itemsBefore":I
    .end local v7    # "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .end local v8    # "ndates":I
    .end local v9    # "wasDate":Z
    :cond_4
    const/4 v10, 0x1

    if-ne v0, v10, :cond_5

    .line 2368
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_1

    .line 2369
    add-int/lit8 v0, v0, 0x1

    .line 2370
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2372
    goto/16 :goto_1

    .line 2373
    :cond_5
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 2374
    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v5

    goto/16 :goto_1

    .line 2381
    .restart local v2    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "itemsBefore":I
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 2385
    .restart local v7    # "litems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    .restart local v8    # "ndates":I
    .restart local v9    # "wasDate":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 2392
    .restart local v1    # "foundSeparator":Z
    .restart local v3    # "i":I
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2393
    .local v4, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v11, v4, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_9

    .line 2394
    const/4 v1, 0x1

    .line 2395
    iget-object v11, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    add-int/lit8 v12, v3, 0x1

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2397
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private rebuildItems()V
    .locals 5

    .prologue
    .line 1767
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1769
    .local v0, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1770
    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 1771
    return-void
.end method

.method private removeRepeatingDates()I
    .locals 7

    .prologue
    .line 1971
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    const/4 v1, 0x0

    .line 1973
    .local v1, "prevDay":I
    const/4 v2, 0x0

    .line 1974
    .local v2, "prevIsDate":Z
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1986
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1988
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    return v4

    .line 1974
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1975
    .local v0, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v5, :cond_3

    .line 1977
    iget v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    if-eq v5, v1, :cond_1

    if-eqz v2, :cond_2

    .line 1978
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    :cond_2
    iget v1, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->time:I

    .line 1981
    const/4 v2, 0x1

    .line 1982
    goto :goto_0

    .line 1983
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeSeparator()V
    .locals 4

    .prologue
    .line 2034
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2035
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2044
    :goto_0
    return-void

    .line 2036
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2037
    .local v0, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v2, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 2038
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2039
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    .line 2040
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    goto :goto_0
.end method

.method private restartTypingTimer()V
    .locals 4

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1347
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    .line 1348
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$23;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$23;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1355
    const-wide/16 v2, 0x1b58

    .line 1348
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1356
    return-void
.end method

.method private restartTypingTimer(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1359
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

    .line 1360
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1361
    .local v0, "typingTimer":Ljava/util/Timer;
    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$24;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$24;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    .line 1369
    const-wide/16 v2, 0x1b58

    .line 1361
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1370
    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingTimers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    return-void
.end method

.method private restoreDraft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1052
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v0

    .line 1053
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

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "drafts"

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1055
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

    .line 1056
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

    .line 1057
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

    .line 1059
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

    .line 1060
    .local v3, "is":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1061
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_3

    .line 1068
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

    .line 1069
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

    .line 1062
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

    .line 1061
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1064
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private retryFailed(Lcom/vkontakte/android/Message;)V
    .locals 11
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    const/4 v10, 0x0

    .line 2338
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2339
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2340
    .local v5, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2345
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2347
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v6, p1, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2348
    invoke-static {v2}, Lcom/vkontakte/android/cache/Cache;->deleteMessages(Ljava/util/List;)V

    .line 2349
    iget v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    iget-object v7, p1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iget-object v8, p1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    iget-object v9, p1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-static {v6, v7, v8, v9, v10}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;

    move-result-object v4

    .line 2350
    .local v4, "m":Lcom/vkontakte/android/Message;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2352
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    .local v1, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {p0, v0, v1, v7, v10}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2355
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2356
    return-void

    .line 2340
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v1    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "m":Lcom/vkontakte/android/Message;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 2341
    .local v3, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v7, v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    iget v8, p1, Lcom/vkontakte/android/Message;->id:I

    if-ne v7, v8, :cond_0

    .line 2342
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveDraft()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1023
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    .line 1024
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string v8, "drafts"

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1025
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

    .line 1026
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

    .line 1049
    :goto_0
    return-void

    .line 1029
    :cond_0
    const/4 v6, 0x0

    .line 1030
    .local v6, "satts":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1032
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1033
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1034
    .local v4, "os":Ljava/io/DataOutputStream;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1035
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1038
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1043
    .end local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    :cond_1
    :goto_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 1044
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

    .line 1045
    .local v3, "ed":Landroid/content/SharedPreferences$Editor;
    if-eqz v6, :cond_2

    .line 1046
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "attach"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1048
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1035
    .end local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 1036
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v0, v4}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1039
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method private sendMessage()V
    .locals 12

    .prologue
    .line 2048
    iget-boolean v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 2100
    :cond_0
    :goto_0
    return-void

    .line 2049
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/ErrorView;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_0

    .line 2050
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2051
    .local v6, "msg":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v2

    .line 2052
    .local v2, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    .local v4, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    const/4 v7, -0x1

    .line 2054
    .local v7, "uploadID":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2061
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 2063
    :cond_3
    iget v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const/4 v9, 0x0

    invoke-static {v8, v6, v2, v4, v9}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;

    move-result-object v5

    .line 2064
    .local v5, "m":Lcom/vkontakte/android/Message;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2065
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 2066
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/WriteBar;->clearAttachments()V

    .line 2067
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2068
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    new-instance v9, Lcom/vkontakte/android/fragments/ChatFragment$32;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/ChatFragment$32;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 2072
    const-wide/16 v10, 0x64

    .line 2068
    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2073
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "send msg, offset="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    iget v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    if-eqz v8, :cond_4

    .line 2075
    const/4 v8, 0x0

    iput v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    .line 2076
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    .line 2077
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2078
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2079
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2080
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2081
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    const v9, 0x7f0900f9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2082
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    const v9, 0x7f0900f8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2083
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    const v9, 0x7f0900f9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2084
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    const v9, 0x7f0900f8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2085
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideJumpButton()V

    .line 2086
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2087
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    .line 2088
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    .line 2090
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2091
    .local v1, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2092
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2093
    .local v3, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v1, v3, v9, v10}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2094
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 2095
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2096
    invoke-direct {p0, v3}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 2097
    iget-boolean v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    if-eqz v8, :cond_0

    .line 2098
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeSeparator()V

    goto/16 :goto_0

    .line 2054
    .end local v1    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v3    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "m":Lcom/vkontakte/android/Message;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 2055
    .local v0, "a":Lcom/vkontakte/android/Attachment;
    instance-of v9, v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    if-eqz v9, :cond_2

    .line 2056
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2057
    check-cast v0, Lcom/vkontakte/android/FwdMessagesAttachment;

    .end local v0    # "a":Lcom/vkontakte/android/Attachment;
    iget-object v8, v0, Lcom/vkontakte/android/FwdMessagesAttachment;->msgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1
.end method

.method private sendSticker(Lcom/vkontakte/android/StickerAttachment;)V
    .locals 13
    .param p1, "s"    # Lcom/vkontakte/android/StickerAttachment;

    .prologue
    const v12, 0x7f0900f9

    const v11, 0x7f0900f8

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2103
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->dataLoading:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 2104
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/ErrorView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2106
    .local v1, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    iget v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const-string v5, ""

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5, v1, v6, v8}, Lcom/vkontakte/android/data/Messages;->send(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Lcom/vkontakte/android/Message;

    move-result-object v3

    .line 2108
    .local v3, "m":Lcom/vkontakte/android/Message;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2109
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$33;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatFragment$33;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 2113
    const-wide/16 v6, 0x64

    .line 2109
    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2114
    iget v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    if-eqz v4, :cond_2

    .line 2115
    iput v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->offsetFromBottom:I

    .line 2116
    iput-boolean v8, p0, Lcom/vkontakte/android/fragments/ChatFragment;->moreAvailableDown:Z

    .line 2117
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2118
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2119
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2120
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->preloadedMessagesDown:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2121
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2122
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2123
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2124
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2125
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideJumpButton()V

    .line 2126
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2127
    invoke-direct {p0, v9}, Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V

    .line 2128
    iput-boolean v9, p0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpedToEnd:Z

    .line 2130
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2131
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2133
    .local v2, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v9, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2134
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 2135
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 2136
    invoke-direct {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 2137
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->hasSeparator:Z

    if-eqz v4, :cond_0

    .line 2138
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeSeparator()V

    goto/16 :goto_0
.end method

.method private sendTypingIfNeeded()V
    .locals 4

    .prologue
    .line 2173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->lastTypingRequest:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->lastTypingRequest:J

    .line 2175
    new-instance v0, Lcom/vkontakte/android/api/MessagesSetActivity;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesSetActivity;-><init>(I)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/MessagesSetActivity;->exec()Lcom/vkontakte/android/APIRequest;

    .line 2177
    :cond_0
    return-void
.end method

.method private showMessageOptions(Lcom/vkontakte/android/Message;)V
    .locals 3
    .param p1, "msg"    # Lcom/vkontakte/android/Message;

    .prologue
    .line 2227
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-boolean v1, p1, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0801d5

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x7f08010a

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f08007d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2228
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2229
    const v2, 0x7f080078

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2230
    new-instance v2, Lcom/vkontakte/android/fragments/ChatFragment$34;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$34;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/Message;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2268
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2269
    return-void

    .line 2227
    .end local v0    # "items":[Ljava/lang/String;
    :cond_0
    const v1, 0x7f08015e

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

    .line 1257
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 1258
    .local v3, "visible":Z
    :goto_0
    if-ne v3, p1, :cond_1

    .line 1287
    :goto_1
    return-void

    .end local v3    # "visible":Z
    :cond_0
    move v3, v5

    .line 1257
    goto :goto_0

    .line 1259
    .restart local v3    # "visible":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 1260
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1261
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1263
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, -0x3ec00000    # -12.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v5, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1264
    .local v1, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1265
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 1266
    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$21;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatFragment$21;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1271
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 1272
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1273
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1274
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1275
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1276
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1277
    .local v2, "tv":Landroid/widget/TextView;
    const v4, -0x796957

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1278
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 1280
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "ta":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1281
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1282
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1283
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$22;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/ChatFragment$22;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method private updateChatUsers(Z)V
    .locals 2
    .param p1, "forceReload"    # Z

    .prologue
    const v1, 0x77359400

    .line 1120
    if-eqz p1, :cond_0

    .line 1121
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/vkontakte/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 1122
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v0, v1

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$18;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 1176
    return-void
.end method

.method private updateChatUsersPhotos()V
    .locals 14

    .prologue
    const v13, 0x7f0900f0

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1714
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1715
    .local v5, "replace":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1753
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1754
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_8

    .line 1762
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 1763
    return-void

    .line 1715
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 1717
    .local v2, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    iget v6, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v6, v12, :cond_3

    iget v6, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    if-lez v6, :cond_3

    .line 1718
    iget v6, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-direct {p0, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->getMessage(I)Lcom/vkontakte/android/Message;

    move-result-object v3

    .line 1720
    .local v3, "m":Lcom/vkontakte/android/Message;
    iget-object v6, v3, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1721
    new-array v6, v11, [Lcom/vkontakte/android/Message;

    aput-object v3, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v6, v8, v10, v11}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    .end local v3    # "m":Lcom/vkontakte/android/Message;
    :cond_3
    iget-boolean v6, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    if-nez v6, :cond_0

    .line 1726
    iget v6, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_4

    iget v6, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v6, v11, :cond_0

    .line 1727
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Message;

    .line 1728
    .local v4, "msg":Lcom/vkontakte/android/Message;
    iget v8, v4, Lcom/vkontakte/android/Message;->id:I

    iget v9, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    if-ne v8, v9, :cond_5

    .line 1729
    iget-object v6, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1735
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v8, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1736
    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, Lcom/vkontakte/android/fragments/ChatFragment$Image;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Lcom/vkontakte/android/fragments/ChatFragment$Image;)V

    .line 1737
    .local v1, "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    iput v13, v1, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    .line 1738
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->chatUsers:Ljava/util/HashMap;

    iget v8, v4, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v6, v1, Lcom/vkontakte/android/fragments/ChatFragment$Image;->url:Ljava/lang/String;

    .line 1739
    iget-object v6, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1729
    .end local v1    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/fragments/ChatFragment$Image;

    .line 1730
    .restart local v1    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    iget v8, v1, Lcom/vkontakte/android/fragments/ChatFragment$Image;->viewId:I

    if-ne v8, v13, :cond_6

    .line 1731
    iget-object v6, v2, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->images:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1755
    .end local v1    # "img":Lcom/vkontakte/android/fragments/ChatFragment$Image;
    .end local v2    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v4    # "msg":Lcom/vkontakte/android/Message;
    .restart local v0    # "i":I
    :cond_8
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v6, v6, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    if-ne v6, v12, :cond_9

    .line 1756
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1757
    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1754
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 1993
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1994
    const-string v0, "vk"

    const-string v1, "update list when activity is null!!!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    :goto_0
    return-void

    .line 1997
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$31;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$31;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateOnline(I)V
    .locals 2
    .param p1, "online"    # I

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment;->getOnlineString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1074
    if-nez p1, :cond_0

    .line 1075
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetLastActivity;

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesGetLastActivity;-><init>(I)V

    .line 1076
    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$17;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$17;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetLastActivity;->setCallback(Lcom/vkontakte/android/api/MessagesGetLastActivity$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1102
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 1104
    :cond_0
    return-void
.end method

.method private updateTyping()V
    .locals 12

    .prologue
    const v9, 0x7f080132

    const v11, 0x7f080120

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1290
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    iget v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v7, 0x77359400

    if-ge v4, v7, :cond_2

    .line 1292
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1293
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

    .line 1296
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v5

    :goto_1
    invoke-direct {p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->showTyping(Z)V

    .line 1297
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1298
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1299
    .restart local v2    # "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 1300
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

    .line 1316
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

    .line 1296
    goto :goto_1

    .line 1302
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 1303
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080133

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

    .line 1306
    :cond_5
    const-string v1, ""

    .line 1307
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1308
    .local v0, "i":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->typingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1314
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080133

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1308
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1309
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

    .line 1310
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

    .line 1312
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1311
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
    .line 1252
    iget v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    return v0
.end method

.method public hideEmojiPopup()V
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->hide()V

    .line 1020
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2143
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2144
    const/16 v2, 0x2710

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    invoke-virtual {v2, p1, p2, p3}, Lcom/vkontakte/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 2145
    :cond_0
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 2146
    const-string v2, "profile"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 2147
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

    .line 2148
    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/WriteBar;->addFwdMessages(Ljava/util/ArrayList;)V

    .line 2158
    .end local v1    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_1
    :goto_0
    return-void

    .line 2150
    .restart local v1    # "profile":Lcom/vkontakte/android/UserProfile;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2151
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2152
    const-string v2, "title"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2153
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    const v3, 0x77359400

    if-ge v2, v3, :cond_3

    const-string v2, "photo"

    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2154
    :cond_3
    const-string v2, "fwd"

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messagesToForward:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2155
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
    .line 645
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "title"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "id"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    .line 650
    new-instance v19, Lcom/vkontakte/android/fragments/ChatFragment$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment$5;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    .line 665
    new-instance v19, Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const v22, 0x7f020186

    const/16 v23, 0x1

    invoke-direct/range {v19 .. v23}, Lcom/vkontakte/android/EmojiPopup;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$6;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/EmojiPopup;->setStickerClickListener(Lcom/vkontakte/android/EmojiPopup$StickerClickListener;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 673
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 674
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

    .line 675
    new-instance v19, Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/WriteBar;->isChat:Z

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/WriteBar;->setFragment(Lcom/actionbarsherlock/app/SherlockFragment;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f090201

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    const v20, 0x7f020186

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 681
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

    .line 682
    :cond_0
    const v19, -0x191410

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 684
    const v19, 0x7f030058

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    .line 685
    const v19, 0x7f030058

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    .line 687
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    .line 688
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

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 690
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 691
    .local v15, "tiv1":Landroid/widget/ImageView;
    const v19, 0x7f0201e3

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 692
    sget-object v19, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 693
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v20, 0x41400000    # 12.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 695
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 696
    .local v16, "tiv2":Landroid/widget/ImageView;
    const v19, 0x7f0201e3

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 697
    sget-object v19, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 698
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 699
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

    .line 700
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 701
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v20, 0x41a00000    # 20.0f

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v20

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    const v19, -0x19130e

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 704
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 705
    .local v17, "ttv":Landroid/widget/TextView;
    const v19, -0x796957

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 706
    const/16 v19, 0x1

    const/high16 v20, 0x41600000    # 14.0f

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 707
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

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    const v20, 0x77359400

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f080132

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

    .line 710
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

    .line 711
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 715
    new-instance v19, Landroid/widget/ListView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    .line 716
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

    .line 717
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const v20, -0x191410

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreViewBtm:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->typingView:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 737
    :goto_0
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

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 746
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const v20, 0x7f0802cb

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, 0x41900000    # 18.0f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextSize(F)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/high16 v20, -0x80000000

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x11

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 753
    new-instance v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->list:Landroid/widget/ListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->emptyView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 759
    new-instance v19, Landroid/widget/ProgressBar;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    .line 760
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

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const v20, 0x7f03003f

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 767
    new-instance v14, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 768
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

    .line 769
    const v19, 0x7f0200b5

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 770
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const v20, 0x7f030057

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/16 v23, 0x50

    invoke-direct/range {v20 .. v23}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v18 .. v20}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->jumpToEndBtn:Landroid/view/View;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$8;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
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

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->loadMoreView:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f0900f8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$9;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$10;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 850
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f090200

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$11;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$11;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f090201

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$12;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->setHasOptionsMenu(Z)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f0901ff

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$13;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$13;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f0901ff

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$14;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$14;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    const v20, 0x7f0901ff

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$15;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$15;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 906
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "fwd"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "fwd"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 908
    .local v7, "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/ui/WriteBar;->addFwdMessages(Ljava/util/ArrayList;)V

    .line 911
    .end local v7    # "fwd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "post"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 912
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "post"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/NewsEntry;

    .line 913
    .local v11, "p":Lcom/vkontakte/android/NewsEntry;
    const/4 v5, 0x0

    .line 914
    .local v5, "att":Lcom/vkontakte/android/Attachment;
    iget v0, v11, Lcom/vkontakte/android/NewsEntry;->type:I

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 915
    new-instance v5, Lcom/vkontakte/android/PostAttachment;

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    invoke-direct {v5, v11}, Lcom/vkontakte/android/PostAttachment;-><init>(Lcom/vkontakte/android/NewsEntry;)V

    .line 919
    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    :cond_6
    :goto_1
    if-eqz v5, :cond_7

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/WriteBar;->addAttachment(Lcom/vkontakte/android/Attachment;)V

    .line 923
    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    .end local v11    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "photos"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 924
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "photos"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 925
    .local v13, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_c

    .line 930
    .end local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$16;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$16;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "from_search"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Message;

    .line 941
    .local v8, "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v6, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v10, "mm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->items:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v10, v6, v1, v2}, Lcom/vkontakte/android/fragments/ChatFragment;->buildItems(Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->removeRepeatingDates()I

    .line 947
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->updateList()V

    .line 948
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->loadFwdUsers(Ljava/util/ArrayList;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->listWrap:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const v20, 0x7f080078

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    const v20, 0x77359400

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 953
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers(Z)V

    .line 963
    .end local v6    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "m":Lcom/vkontakte/android/Message;
    .end local v10    # "mm":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_9
    :goto_3
    return-void

    .line 724
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const/high16 v20, 0x7f030000

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09002b

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f080049

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09002b

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v20, 0x7f0200f9

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v19, v0

    const v20, 0x7f09002a

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    move-object/from16 v19, v0

    new-instance v20, Lcom/vkontakte/android/fragments/ChatFragment$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment$7;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 916
    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v11    # "p":Lcom/vkontakte/android/NewsEntry;
    :cond_b
    iget-object v0, v11, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 917
    iget-object v0, v11, Lcom/vkontakte/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    check-cast v5, Lcom/vkontakte/android/Attachment;

    .restart local v5    # "att":Lcom/vkontakte/android/Attachment;
    goto/16 :goto_1

    .line 925
    .end local v5    # "att":Lcom/vkontakte/android/Attachment;
    .end local v11    # "p":Lcom/vkontakte/android/NewsEntry;
    .restart local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 926
    .local v12, "photo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->writeBar:Lcom/vkontakte/android/ui/WriteBar;

    move-object/from16 v20, v0

    new-instance v21, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lcom/vkontakte/android/ui/PendingPhotoAttachment;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Lcom/vkontakte/android/ui/WriteBar;->addAttachment(Lcom/vkontakte/android/Attachment;)V

    goto/16 :goto_2

    .line 955
    .end local v12    # "photo":Ljava/lang/String;
    .end local v13    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->loadData(Z)V

    .line 956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    const v20, 0x77359400

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    if-lez v19, :cond_e

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/data/Friends;->getOnlineStatus(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateOnline(I)V

    .line 959
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    move/from16 v19, v0

    const v20, 0x77359400

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 960
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->updateChatUsers(Z)V

    goto/16 :goto_3
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2871
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->hideEmojiPopup()V

    .line 2872
    const/4 v0, 0x1

    .line 2874
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

    .line 1011
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1012
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/EmojiPopup;->showEmojiPopup(Z)V

    .line 1014
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/vkontakte/android/EmojiPopup;->onKeyboardStateChanged(ZI)V

    .line 1016
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 966
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 967
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "from_search"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 968
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 969
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    const-string v1, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    const-string v1, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 972
    const-string v1, "com.vkontakte.android.TYPING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 974
    const-string v1, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 975
    const-string v1, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 976
    const-string v1, "com.vkontakte.android.MESSAGE_ID_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 977
    const-string v1, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 978
    const-string v1, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 979
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 981
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

    .line 1374
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "from_search"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1375
    const v4, 0x7f08002c

    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1376
    .local v2, "item":Lcom/actionbarsherlock/view/MenuItem;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->openChatBtn:Landroid/view/View;

    invoke-interface {v2, v4}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 1377
    invoke-interface {v2, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 1419
    .end local v2    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :goto_0
    return-void

    .line 1380
    :cond_0
    const v4, 0x7f09001f

    const v5, 0x7f080118

    invoke-interface {p1, v6, v4, v6, v5}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 1381
    .local v1, "attach":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v1, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 1382
    const v4, 0x7f0200f0

    invoke-interface {v1, v4}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 1383
    iget v4, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    const v5, 0x77359400

    if-ge v4, v5, :cond_1

    .line 1384
    const v4, 0x7f08008a

    invoke-interface {p1, v6, v6, v6, v4}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 1385
    .restart local v2    # "item":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v2, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 1386
    new-instance v0, Lcom/vkontakte/android/fragments/ChatFragment$25;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/vkontakte/android/fragments/ChatFragment$25;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/content/Context;)V

    .line 1392
    .local v0, "actionView":Landroid/widget/ImageView;
    const v4, 0x7f02027e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1393
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 1394
    new-instance v4, Lcom/vkontakte/android/fragments/ChatFragment$26;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/ChatFragment$26;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1403
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/fragments/ChatFragment$27;

    invoke-direct {v5, p0, v0}, Lcom/vkontakte/android/fragments/ChatFragment$27;-><init>(Lcom/vkontakte/android/fragments/ChatFragment;Landroid/widget/ImageView;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1413
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1415
    .end local v0    # "actionView":Landroid/widget/ImageView;
    .end local v2    # "item":Lcom/actionbarsherlock/view/MenuItem;
    :cond_1
    const v4, 0x7f090020

    const v5, 0x7f08014f

    invoke-interface {p1, v6, v4, v6, v5}, Lcom/actionbarsherlock/view/Menu;->add(IIII)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    .line 1416
    .local v3, "members":Lcom/actionbarsherlock/view/MenuItem;
    invoke-interface {v3, v7}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 1417
    const v4, 0x7f0200f2

    invoke-interface {v3, v4}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 984
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 985
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from_search"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/ChatFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 988
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

    .line 2202
    const/4 v2, 0x0

    .line 2203
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

    .line 2204
    .local v1, "mid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2210
    :goto_0
    if-nez v2, :cond_2

    .line 2224
    :goto_1
    return-void

    .line 2204
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 2205
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget v6, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v6, v1, :cond_0

    .line 2206
    move-object v2, v0

    .line 2207
    goto :goto_0

    .line 2211
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v3, :cond_6

    .line 2212
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2214
    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    const v6, 0x7f0801d4

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

    .line 2215
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->notifyDataSetChanged()V

    .line 2216
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 2217
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v3}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    goto :goto_1

    .line 2213
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2220
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v3}, Lcom/actionbarsherlock/view/ActionMode;->getMenu()Lcom/actionbarsherlock/view/Menu;

    move-result-object v3

    const v6, 0x7f09020a

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

    .line 2222
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

    .line 2182
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v3, :cond_0

    move v3, v4

    .line 2197
    :goto_0
    return v3

    .line 2183
    :cond_0
    const/4 v2, 0x0

    .line 2184
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

    .line 2185
    .local v1, "mid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2191
    :goto_1
    if-nez v2, :cond_3

    move v3, v4

    goto :goto_0

    .line 2185
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 2186
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget v6, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v6, v1, :cond_1

    .line 2187
    move-object v2, v0

    .line 2188
    goto :goto_1

    .line 2192
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    :cond_3
    iget-boolean v3, v2, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_0

    .line 2193
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionModeCallback:Lcom/actionbarsherlock/view/ActionMode$Callback;

    invoke-virtual {v3, v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    .line 2194
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->actionMode:Lcom/actionbarsherlock/view/ActionMode;

    const v6, 0x7f0801d4

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

    .line 2196
    iget-object v3, p0, Lcom/vkontakte/android/fragments/ChatFragment;->adapter:Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment$MessagesAdapter;->notifyDataSetChanged()V

    move v3, v5

    .line 2197
    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const v6, 0x77359400

    .line 1422
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09001f

    if-ne v1, v2, :cond_0

    .line 1423
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

    .line 1425
    :cond_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090020

    if-ne v1, v2, :cond_1

    .line 1426
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1427
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1428
    const-string v1, "admin"

    iget v2, p0, Lcom/vkontakte/android/fragments/ChatFragment;->peer:I

    sub-int/2addr v2, v6

    invoke-static {v2}, Lcom/vkontakte/android/data/Messages;->getChatAdmin(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1429
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1431
    const-string v1, "ChatMembersFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 1433
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 993
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    .line 995
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 996
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->saveDraft()V

    .line 997
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 998
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1001
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->isActive:Z

    .line 1003
    sput-object p0, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 1004
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->markAsRead()V

    .line 1005
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ChatFragment;->restoreDraft()V

    .line 1006
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->emojiPopup:Lcom/vkontakte/android/EmojiPopup;

    invoke-virtual {v0}, Lcom/vkontakte/android/EmojiPopup;->loadRecents()V

    .line 1007
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 1008
    return-void
.end method
