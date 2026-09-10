.class Lcom/vkontakte/android/DialogsActivity$1$1;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/GetMessageInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DialogsActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/DialogsActivity$1;

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DialogsActivity$1;ILcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->this$1:Lcom/vkontakte/android/DialogsActivity$1;

    iput p2, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->val$uid:I

    iput-object p3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->val$msg:Lcom/vkontakte/android/Message;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 203
    return-void
.end method

.method public success(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "photo"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "read"    # Z

    .prologue
    .line 176
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 177
    .local v2, "up":Lcom/vkontakte/android/UserProfile;
    iput-object p2, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 178
    iput-object p1, v2, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 179
    iget v3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->val$uid:I

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 180
    new-instance v0, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 181
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->val$msg:Lcom/vkontakte/android/Message;

    iget-boolean v3, v3, Lcom/vkontakte/android/Message;->out:Z

    iput-boolean v3, v0, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 182
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->val$msg:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->time:I

    iput v3, v0, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 183
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->val$msg:Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->id:I

    iput v3, v0, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 184
    iput-object v2, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 185
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->val$msg:Lcom/vkontakte/android/Message;

    iget-boolean v3, v3, Lcom/vkontakte/android/Message;->readState:Z

    iput-boolean v3, v0, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 186
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->val$msg:Lcom/vkontakte/android/Message;

    iget-object v3, v3, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/DialogEntry;->setLastMessage(Ljava/lang/String;)V

    .line 187
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 188
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->this$1:Lcom/vkontakte/android/DialogsActivity$1;

    invoke-static {v3}, Lcom/vkontakte/android/DialogsActivity$1;->access$0(Lcom/vkontakte/android/DialogsActivity$1;)Lcom/vkontakte/android/DialogsActivity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/DialogsCache;->add(Lcom/vkontakte/android/DialogEntry;Landroid/content/Context;)V

    .line 190
    const/4 v1, 0x0

    .line 191
    .local v1, "prevUid":I
    sget-object v3, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    iget v1, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 192
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->val$uid:I

    if-eq v1, v3, :cond_1

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    sput-object v3, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    .line 197
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/DialogsActivity$1$1;->this$1:Lcom/vkontakte/android/DialogsActivity$1;

    invoke-static {v3}, Lcom/vkontakte/android/DialogsActivity$1;->access$0(Lcom/vkontakte/android/DialogsActivity$1;)Lcom/vkontakte/android/DialogsActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    .line 198
    return-void

    .line 194
    :cond_1
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    sput-object v3, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto :goto_0
.end method
