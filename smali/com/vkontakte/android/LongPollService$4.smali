.class Lcom/vkontakte/android/LongPollService$4;
.super Ljava/lang/Object;
.source "LongPollService.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetMessageInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->processMessage(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LongPollService;

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;

.field private final synthetic val$sender:I

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LongPollService;Lcom/vkontakte/android/Message;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$4;->this$0:Lcom/vkontakte/android/LongPollService;

    iput-object p2, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iput p3, p0, Lcom/vkontakte/android/LongPollService$4;->val$sender:I

    iput-object p4, p0, Lcom/vkontakte/android/LongPollService$4;->val$text:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 418
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "photo"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "read"    # Z

    .prologue
    const/4 v6, 0x1

    .line 382
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 383
    .local v3, "up":Lcom/vkontakte/android/UserProfile;
    iput-object p2, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 384
    iput-object p1, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 385
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->sender:I

    iput v4, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 386
    new-instance v0, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 387
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->out:Z

    iput-boolean v4, v0, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 388
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->time:I

    iput v4, v0, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 389
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iput-object v4, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    .line 390
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->id:I

    iput v4, v0, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 391
    iput-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 392
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iget-boolean v4, v4, Lcom/vkontakte/android/Message;->readState:Z

    iput-boolean v4, v0, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 393
    const/4 v4, -0x1

    iput v4, v0, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 394
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 400
    :goto_1
    sget-object v4, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 401
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-static {v0, v4}, Lcom/vkontakte/android/cache/DialogsCache;->add(Lcom/vkontakte/android/DialogEntry;Landroid/content/Context;)V

    .line 402
    const/4 v2, 0x0

    .line 403
    .local v2, "prevUid":I
    sget-object v4, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    iget v2, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 404
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iget v4, v4, Lcom/vkontakte/android/Message;->sender:I

    if-eq v2, v4, :cond_4

    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-le v4, v6, :cond_4

    const/4 v4, 0x0

    sput-object v4, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    .line 408
    :goto_2
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    sput-object v4, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 409
    sget v4, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    iget v5, p0, Lcom/vkontakte/android/LongPollService$4;->val$sender:I

    if-eq v4, v5, :cond_1

    .line 410
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$text:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/String;Z)V

    .line 411
    iget v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$sender:I

    invoke-static {v4}, Lcom/vkontakte/android/LongPollService;->checkAndPreload(I)V

    .line 413
    :cond_1
    return-void

    .line 395
    .end local v2    # "prevUid":I
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/LongPollService$4;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v4, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    aget v4, v4, v1

    if-lez v4, :cond_3

    .line 396
    iput v1, v0, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    goto :goto_1

    .line 394
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .restart local v2    # "prevUid":I
    :cond_4
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    sput-object v4, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto :goto_2
.end method
